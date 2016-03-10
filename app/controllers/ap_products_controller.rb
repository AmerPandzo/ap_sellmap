class ApProductsController < ApplicationController
  before_action :set_ap_product, only: [:show, :edit, :update, :destroy]

  # GET /ap_products
  # GET /ap_products.json
  def index
    @ap_products = ApProduct.all
  end

  # GET /ap_products/1
  # GET /ap_products/1.json
  def show
  end

  # GET /ap_products/new
  def new
    @ap_product = ApProduct.new
  end

  # GET /ap_products/1/edit
  def edit
  end

  # POST /ap_products
  # POST /ap_products.json
  def create
    @ap_product = ApProduct.new(ap_product_params)

    respond_to do |format|
      if @ap_product.save
        format.html { redirect_to @ap_product, notice: 'Ap product was successfully created.' }
        format.json { render :show, status: :created, location: @ap_product }
      else
        format.html { render :new }
        format.json { render json: @ap_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ap_products/1
  # PATCH/PUT /ap_products/1.json
  def update
    respond_to do |format|
      if @ap_product.update(ap_product_params)
        format.html { redirect_to @ap_product, notice: 'Ap product was successfully updated.' }
        format.json { render :show, status: :ok, location: @ap_product }
      else
        format.html { render :edit }
        format.json { render json: @ap_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ap_products/1
  # DELETE /ap_products/1.json
  def destroy
    @ap_product.destroy
    respond_to do |format|
      format.html { redirect_to ap_products_url, notice: 'Ap product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ap_product
      @ap_product = ApProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ap_product_params
      params.require(:ap_product).permit(:name)
    end
end
