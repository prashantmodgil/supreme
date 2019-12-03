class ComplaintsController < ApplicationController
  before_action :set_complaint, only: [:show, :edit, :update, :destroy, :update_complaint]

  # GET /complaints
  # GET /complaints.json
  def index
    if params.has_key? (:search)
      search = params[:search]
      capital_search = search.capitalize
      downcase_search = search.downcase
      upcase_search = search.upcase
      title_search = search.titleize
      @complaints = Complaint.where("mechenic like? OR mechenic like? OR mechenic like? OR mechenic like? OR product_sr_no like? OR product_sr_no like? OR product_sr_no like? OR product_sr_no like? OR dealer like? OR dealer like? OR dealer like? OR dealer like? OR coustomer_name like? OR coustomer_name like? OR coustomer_name like? OR coustomer_name like? OR coustomer_phone like? ","#{capital_search}%","#{downcase_search}%","#{upcase_search}%","#{title_search}%","#{capital_search}%","#{downcase_search}%","#{upcase_search}%","#{title_search}%","#{capital_search}%","#{downcase_search}%","#{upcase_search}%","#{title_search}%","#{capital_search}%","#{downcase_search}%","#{upcase_search}%","#{title_search}%","#{search}%").order("created_at DESC").page(params[:page])
    else
      @complaints = Complaint.all.order("created_at DESC").page(params[:page])
    end
  end

  # GET /complaints/1
  # GET /complaints/1.json
  def show
  end

  # GET /complaints/new
  def new
    @complaint = Complaint.new
    @complaint_uid = Complaint.last !=nil ? Complaint.last.uid.to_i + 1 : 0
  end

  # GET /complaints/1/edit
  def edit
  end

  # POST /complaints
  # POST /complaints.json
  def create
    @complaint = Complaint.new(complaint_params)

    respond_to do |format|
      if @complaint.save
        format.html { redirect_to new_complaint_path, notice: 'Complaint was successfully created.' }
        format.json { render :show, status: :created, location: @complaint }
      #ComplaintMailer.with(complaint: @complaint).send_email.deliver_now
      else
        format.html { render :new }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complaints/1
  # PATCH/PUT /complaints/1.json
  def update
    respond_to do |format|
      if @complaint.update(complaint_params)
        format.html { redirect_to @complaint, notice: 'Complaint was successfully updated.' }
        format.json { render :show, status: :ok, location: @complaint }
      else
        format.html { render :edit }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaints/1
  # DELETE /complaints/1.json
  def destroy
    @complaint.destroy
    respond_to do |format|
      format.html { redirect_to complaints_url, notice: 'Complaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update_complaints
   if  params.has_key? (:mechenic_search)
     status = params[:mechenic_search][:complaint_status]
     mec_name = params[:mechenic_search][:mec_name]
     start_date = params[:start_date].to_datetime
     stop_date = params[:stop_date].to_datetime
     if status != "all"
       @complaints =Complaint.where("complaint_status like? AND mechenic like?","#{status}","#{mec_name}").where(call_date: start_date..stop_date).order("created_at DESC")
     else
       @complaints =Complaint.where("mechenic like?","#{mec_name}").where(call_date: start_date..stop_date).order("created_at DESC")
     end
   elsif params.has_key? (:dealer_search)
     status = params[:dealer_search][:complaint_status]
     dealer_name = params[:dealer_search][:dealer_name]
     start_date = params[:start_date].to_datetime
     stop_date = params[:stop_date].to_datetime
     if status =! "all"
       @complaints =Complaint.where("complaint_status like? AND dealer like?","#{status}","#{dealer_name}").where(call_date: start_date..stop_date).order("created_at DESC")
     else
       @complaints =Complaint.where("dealer like?","#{dealer_name}").where(call_date: start_date..stop_date).order("created_at DESC")
     end
   else
     @complaints = Complaint.all.order("created_at DESC").page(params[:page])
   end
  end

  def update_complaint
    if @complaint.present?
      @complaint.assign_attributes(complaint_params)
      if @complaint.save
        render json:{complaint: @complaint, message: "Complaint was successfully update." }
      else
        render json:{complaint: @complaint, message: "complaint not update" }
      end
    else
      render json:{complaint: @complaint, message: "complaint not found with id" }
    end
  end

  def export_complaints
    p "=========================================================================="
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complaint_params
      params.require(:complaint).permit(:call_date, :dealer, :product_name, :fault, :complaint_status, :call_history, :warranty, :mechenic, :site_address, :coustomer_name, :coustomer_address, :coustomer_city, :coustomer_phone, :product_sr_no, :purchase_date, :createdby, :close_date,:description,:uid)
    end
end
