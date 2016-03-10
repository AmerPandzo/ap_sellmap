class LocationsAssortmentsController < ApplicationController
  before_action :set_locations_assortment, only: [:show, :edit, :update, :destroy]

  # GET /locations_assortments
  # GET /locations_assortments.json
  def index
    @locations_assortments = LocationsAssortment.all
  end

  # GET /locations_assortments/1
  # GET /locations_assortments/1.json
  def show
  end

  # GET /locations_assortments/new
  def new
    @locations_assortment = LocationsAssortment.new
  end

  # GET /locations_assortments/1/edit
  def edit
  end

  # POST /locations_assortments
  # POST /locations_assortments.json
  def create
    @locations_assortment = LocationsAssortment.new(locations_assortment_params)

    respond_to do |format|
      if @locations_assortment.save
        format.html { redirect_to @locations_assortment, notice: 'Locations assortment was successfully created.' }
        format.json { render :show, status: :created, location: @locations_assortment }
      else
        format.html { render :new }
        format.json { render json: @locations_assortment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations_assortments/1
  # PATCH/PUT /locations_assortments/1.json
  def update
    respond_to do |format|
      if @locations_assortment.update(locations_assortment_params)
        format.html { redirect_to @locations_assortment, notice: 'Locations assortment was successfully updated.' }
        format.json { render :show, status: :ok, location: @locations_assortment }
      else
        format.html { render :edit }
        format.json { render json: @locations_assortment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations_assortments/1
  # DELETE /locations_assortments/1.json
  def destroy
    @locations_assortment.destroy
    respond_to do |format|
      format.html { redirect_to locations_assortments_url, notice: 'Locations assortment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locations_assortment
      @locations_assortment = LocationsAssortment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locations_assortment_params
      params.require(:locations_assortment).permit(:assortment_id, :location_id)
    end
end
