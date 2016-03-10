class PrimaryAssortmentsController < ApplicationController
  before_action :set_primary_assortment, only: [:show, :edit, :update, :destroy]

  # GET /primary_assortments
  # GET /primary_assortments.json
  def index
    @primary_assortments = PrimaryAssortment.all
  end

  # GET /primary_assortments/1
  # GET /primary_assortments/1.json
  def show
  end

  # GET /primary_assortments/new
  def new
    @primary_assortment = PrimaryAssortment.new
  end

  # GET /primary_assortments/1/edit
  def edit
  end

  # POST /primary_assortments
  # POST /primary_assortments.json
  def create
    @primary_assortment = PrimaryAssortment.new(primary_assortment_params)

    respond_to do |format|
      if @primary_assortment.save
        format.html { redirect_to @primary_assortment, notice: 'Primary assortment was successfully created.' }
        format.json { render :show, status: :created, location: @primary_assortment }
      else
        format.html { render :new }
        format.json { render json: @primary_assortment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primary_assortments/1
  # PATCH/PUT /primary_assortments/1.json
  def update
    respond_to do |format|
      if @primary_assortment.update(primary_assortment_params)
        format.html { redirect_to @primary_assortment, notice: 'Primary assortment was successfully updated.' }
        format.json { render :show, status: :ok, location: @primary_assortment }
      else
        format.html { render :edit }
        format.json { render json: @primary_assortment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primary_assortments/1
  # DELETE /primary_assortments/1.json
  def destroy
    @primary_assortment.destroy
    respond_to do |format|
      format.html { redirect_to primary_assortments_url, notice: 'Primary assortment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primary_assortment
      @primary_assortment = PrimaryAssortment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def primary_assortment_params
      params.require(:primary_assortment).permit(:name)
    end
end
