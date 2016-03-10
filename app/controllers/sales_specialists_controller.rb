class SalesSpecialistsController < ApplicationController
  before_action :set_sales_specialist, only: [:show, :edit, :update, :destroy]

  # GET /sales_specialists
  # GET /sales_specialists.json
  def index
    @sales_specialists = SalesSpecialist.all
  end

  # GET /sales_specialists/1
  # GET /sales_specialists/1.json
  def show
  end

  # GET /sales_specialists/new
  def new
    @sales_specialist = SalesSpecialist.new
  end

  # GET /sales_specialists/1/edit
  def edit
  end

  # POST /sales_specialists
  # POST /sales_specialists.json
  def create
    @sales_specialist = SalesSpecialist.new(sales_specialist_params)

    respond_to do |format|
      if @sales_specialist.save
        format.html { redirect_to @sales_specialist, notice: 'Sales specialist was successfully created.' }
        format.json { render :show, status: :created, location: @sales_specialist }
      else
        format.html { render :new }
        format.json { render json: @sales_specialist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_specialists/1
  # PATCH/PUT /sales_specialists/1.json
  def update
    respond_to do |format|
      if @sales_specialist.update(sales_specialist_params)
        format.html { redirect_to @sales_specialist, notice: 'Sales specialist was successfully updated.' }
        format.json { render :show, status: :ok, location: @sales_specialist }
      else
        format.html { render :edit }
        format.json { render json: @sales_specialist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_specialists/1
  # DELETE /sales_specialists/1.json
  def destroy
    @sales_specialist.destroy
    respond_to do |format|
      format.html { redirect_to sales_specialists_url, notice: 'Sales specialist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_specialist
      @sales_specialist = SalesSpecialist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_specialist_params
      params.require(:sales_specialist).permit(:name, :phone)
    end
end
