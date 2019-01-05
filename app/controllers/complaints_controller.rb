class ComplaintsController < ApplicationController
  before_action :set_complaint, only: [:show, :edit, :update, :destroy]

  # GET /complaints
  # GET /complaints.json
  def index
    @complaints = Complaint.all
    search =params[:search]
    if search
        capital_search = search.capitalize
        downcase_search = search.downcase
        upcase_search = search.upcase
        title_search = search.titleize
        @complaints = Complaint.where("mechenic like? OR mechenic like? OR mechenic like? OR mechenic like? OR product_sr_no like? OR product_sr_no like? OR product_sr_no like? OR product_sr_no like? OR dealer like? OR dealer like? OR dealer like? OR dealer like?","#{capital_search}%","#{downcase_search}%","#{upcase_search}%","#{title_search}%","#{capital_search}%","#{downcase_search}%","#{upcase_search}%","#{title_search}%","#{capital_search}%","#{downcase_search}%","#{upcase_search}%","#{title_search}%")
    end
  end

  # GET /complaints/1
  # GET /complaints/1.json
  def show
  end

  # GET /complaints/new
  def new
    @complaint = Complaint.new
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
        format.html { redirect_to @complaint, notice: 'Complaint was successfully created.' }
        format.json { render :show, status: :created, location: @complaint }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complaint_params
      params.require(:complaint).permit(:call_date, :dealer, :product_name, :fault, :complaint_status, :call_history, :warranty, :mechenic, :site_address, :coustomer_name, :coustomer_address, :coustomer_city, :coustomer_phone, :product_sr_no, :purchase_date, :createdby)
    end
end
