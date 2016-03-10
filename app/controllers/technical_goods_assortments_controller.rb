class TechnicalGoodsAssortmentsController < ApplicationController
  before_action :set_technical_goods_assortment, only: [:show, :edit, :update, :destroy]

  # GET /technical_goods_assortments
  # GET /technical_goods_assortments.json
  def index
    @technical_goods_assortments = TechnicalGoodsAssortment.all
  end

  # GET /technical_goods_assortments/1
  # GET /technical_goods_assortments/1.json
  def show
  end

  # GET /technical_goods_assortments/new
  def new
    @technical_goods_assortment = TechnicalGoodsAssortment.new
  end

  # GET /technical_goods_assortments/1/edit
  def edit
  end

  # POST /technical_goods_assortments
  # POST /technical_goods_assortments.json
  def create
    @technical_goods_assortment = TechnicalGoodsAssortment.new(technical_goods_assortment_params)

    respond_to do |format|
      if @technical_goods_assortment.save
        format.html { redirect_to @technical_goods_assortment, notice: 'Technical goods assortment was successfully created.' }
        format.json { render :show, status: :created, location: @technical_goods_assortment }
      else
        format.html { render :new }
        format.json { render json: @technical_goods_assortment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technical_goods_assortments/1
  # PATCH/PUT /technical_goods_assortments/1.json
  def update
    respond_to do |format|
      if @technical_goods_assortment.update(technical_goods_assortment_params)
        format.html { redirect_to @technical_goods_assortment, notice: 'Technical goods assortment was successfully updated.' }
        format.json { render :show, status: :ok, location: @technical_goods_assortment }
      else
        format.html { render :edit }
        format.json { render json: @technical_goods_assortment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technical_goods_assortments/1
  # DELETE /technical_goods_assortments/1.json
  def destroy
    @technical_goods_assortment.destroy
    respond_to do |format|
      format.html { redirect_to technical_goods_assortments_url, notice: 'Technical goods assortment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technical_goods_assortment
      @technical_goods_assortment = TechnicalGoodsAssortment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technical_goods_assortment_params
      params.require(:technical_goods_assortment).permit(:ap1_id, :ap2_id, :ap3_id, :ap4_id, :ap5_id, :ap6_id, :ap7_id, :ap8_id, :b1_id, :b2_id, :b3_id, :b4_id, :b5_id, :b6_id , :location_id)
    end
end
