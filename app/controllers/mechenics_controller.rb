class MechenicsController < ApplicationController
  before_action :set_mechenic, only: [:show, :edit, :update, :destroy]

  # GET /mechenics
  # GET /mechenics.json
  def index
    @mechenics = Mechenic.all
  end

  # GET /mechenics/1
  # GET /mechenics/1.json
  def show
  end

  # GET /mechenics/new
  def new
    @mechenic = Mechenic.new
  end

  # GET /mechenics/1/edit
  def edit
  end

  # POST /mechenics
  # POST /mechenics.json
  def create
    byebug
    @mechenic = Mechenic.new(mechenic_params)

    respond_to do |format|
      if @mechenic.save
        format.html { redirect_to @mechenic, notice: 'Mechenic was successfully created.' }
        format.json { render :show, status: :created, location: @mechenic }
      else
        format.html { render :new }
        format.json { render json: @mechenic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mechenics/1
  # PATCH/PUT /mechenics/1.json
  def update
    respond_to do |format|
      if @mechenic.update(mechenic_params)
        format.html { redirect_to @mechenic, notice: 'Mechenic was successfully updated.' }
        format.json { render :show, status: :ok, location: @mechenic }
      else
        format.html { render :edit }
        format.json { render json: @mechenic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mechenics/1
  # DELETE /mechenics/1.json
  def destroy
    @mechenic.destroy
    respond_to do |format|
      format.html { redirect_to mechenics_url, notice: 'Mechenic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mechenic
      @mechenic = Mechenic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mechenic_params
      params.require(:mechenic).permit(:mec_name, :mobile_num_1, :mobile_num2, :address, :district)
    end
end
