class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]

  # GET /brands
  # GET /brands.json
  def index
    @brands = Brand.all
    search =params[:search]
    if search
        capital_search = search.capitalize
        downcase_search = search.downcase
        upcase_search = search.upcase
        title_search = search.titleize
        @brands = Brand.where("brand_name like? OR brand_name like? OR brand_name like? OR brand_name like?","#{capital_search}%","#{downcase_search}%","#{upcase_search}%","#{title_search}%").page(params[:page])
    end
    respond_to do |format|
      format.html
      format.csv { send_data @brands.to_csv, filename: "brands-#{Date.today}.csv" }
    end
  end

  # GET /brands/1
  # GET /brands/1.json
  def show
    csv_text = File.read(Rails.root.join('lib', 'seed', 'products-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Product.new
  # t.id = row['id']
  t.brand = row['brand']
  t.name = row['name']
  t.save
end
puts "There are now #{Product.count} rows in the product table"

csv_text = File.read(Rails.root.join('lib', 'seed', 'brands-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Brand.new
  # t.id = row['id']
  t.brand_name = row['brand_name']
  t.save
end
puts "There are now #{Brand.count} rows in the brand table"

csv_text = File.read(Rails.root.join('lib', 'seed', 'dealers-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Dealer.new
  # t.id = row['id']
  t.dealer_name = row['dealer_name']
  t.dealer_contact = row['dealer_contact']
  t.dealer_address = row['dealer_address']
  t.save
end
puts "There are now #{Dealer.count} rows in the dealer table"

csv_text = File.read(Rails.root.join('lib', 'seed', 'mechenics-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Mechenic.new
  # t.id = row['id']
  t.mec_name = row['mec_name']
  t.email = row['email']
  t.mobile_num_1 = row['mobile_num_1']
  t.mobile_num2 = row['mobile_num2']
  t.address = row['address']
  t.district = row['district']
  t.save
end
puts "There are now #{Mechenic.count} rows in the mechenic table"
  end

  # GET /brands/new
  def new
    @brand = Brand.new
  end

  # GET /brands/1/edit
  def edit
  end

  # POST /brands
  # POST /brands.json
  def create
    @brand = Brand.new(brand_params)

    respond_to do |format|
      if @brand.save
        format.html { redirect_to @brand, notice: 'Brand was successfully created.' }
        format.json { render :show, status: :created, location: @brand }
      else
        format.html { render :new }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brands/1
  # PATCH/PUT /brands/1.json
  def update
    respond_to do |format|
      if @brand.update(brand_params)
        format.html { redirect_to @brand, notice: 'Brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @brand }
      else
        format.html { render :edit }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brands/1
  # DELETE /brands/1.json
  def destroy
    @brand.destroy
    respond_to do |format|
      format.html { redirect_to brands_url, notice: 'Brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_params
      params.require(:brand).permit(:brand_name)
    end
end
