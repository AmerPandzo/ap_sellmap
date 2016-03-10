class ApBrandsController < ApplicationController
  before_action :set_ap_brand, only: [:show, :edit, :update, :destroy]

  # GET /ap_brands
  # GET /ap_brands.json
  def index
    @ap_brands = ApBrand.all
  end

  # GET /ap_brands/1
  # GET /ap_brands/1.json
  def show
  end

  # GET /ap_brands/new
  def new
    @ap_brand = ApBrand.new
  end

  # GET /ap_brands/1/edit
  def edit
  end

  # POST /ap_brands
  # POST /ap_brands.json
  def create
    @ap_brand = ApBrand.new(ap_brand_params)

    respond_to do |format|
      if @ap_brand.save
        format.html { redirect_to @ap_brand, notice: 'Ap brand was successfully created.' }
        format.json { render :show, status: :created, location: @ap_brand }
      else
        format.html { render :new }
        format.json { render json: @ap_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ap_brands/1
  # PATCH/PUT /ap_brands/1.json
  def update
    respond_to do |format|
      if @ap_brand.update(ap_brand_params)
        format.html { redirect_to @ap_brand, notice: 'Ap brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @ap_brand }
      else
        format.html { render :edit }
        format.json { render json: @ap_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ap_brands/1
  # DELETE /ap_brands/1.json
  def destroy
    @ap_brand.destroy
    respond_to do |format|
      format.html { redirect_to ap_brands_url, notice: 'Ap brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ap_brand
      @ap_brand = ApBrand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ap_brand_params
      params.require(:ap_brand).permit(:name)
    end
end
