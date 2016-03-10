class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
   def index
    @locations = Location.all.includes(:place , :region).order(:name).scoped
    respond_to do |format|
      format.html
      format.xlsx
    end
    @pa =  Hash.new{|hash, key| hash[key] = Array.new} 
    @primarni_asortimani = PrimaryAssortment.all
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
    @la = LocationsAssortment.all.where(location_id: location.id)
    @pa =  Hash.new{|hash, key| hash[key] = Array.new} 
         @la.each do |l|
        @pa[l.location_id].push(PrimaryAssortment.all.where(id: l.assortment_id))
      end
     
    marker.lat location.latitude
    marker.lng location.longitude
    marker.infowindow render_to_string(:partial => "/locations/infowindow", :locals => { :location => location})
    marker.title "#{location.name}"
    marker.json({ :address => location.address , :name => location.name , :region_id => location.region_id , 
    :grad => location.place.name, :grad_id => location.place.id ,:lok_as => LocationsAssortment.all.where(location_id: location.id) ,:pa1 => @pa[location.id].map { |array| array.map {|p| p.id}}.join(',')})
    
  end

    #@json = @locations.to_gmaps4rails do |location , marker|
   # marker.infowindow render_to_string(:partial => "/locations/infowindow", :locals => { :location => location})
    #marker.title "#{location.name}"
   # marker.json({ :address => location.address})
  #end
  #{}"\"id\": \"#{property.id}\""
    #respond_to do |format|
   #   format.html # index.html.erb
   #   format.json { render json: @locations }
  #  end
  end
def export
   # locations3 = Hash.new
    locations_assortments = LocationsAssortment.where(:assortment_id => params[:asortimani])
    locations1 = Location.where(:region_id => params[:areas].nil? ? Region.all : params[:areas])
    locations2 = Location.where(:place_id => params[:places].nil? ? Place.all : params[:places])
    locations3 = Array.new 
    locations_assortments.each do |la|
    locations3.push(Location.find(la.location_id))
    end
     #locations3.collect {|a, b|  [a, locations3[a].collect {|c,d| [c,d]}] }.collect {|e,f| [e => f]}
    @locations = locations1 + locations2 & locations3
    # @locations = Location.all
    render xlsx: 'export'

end
def lokacije
    @locations = Location.all
end
  # GET /locations/1
  # GET /locations/1.json
  def show
    @location = Location.find(params[:id])
  end

  # GET /locations/new
  def new
    @location = Location.new
    @location.locations_assortments.build
    @location.technical_goods_assortments.build
    10.times { @location.assets.build }
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @location }
    end
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json

def create
  @location = Location.new(location_params)

  respond_to do |format|
    if @location.save
     
      if params[:avatars]
        #===== The magic is here ;)
        params[:avatars].each { |avatar|
          @location.assets.create(avatar: avatar)
        }
      end

      format.html { redirect_to @location, notice: 'Gallery was successfully created.' }
      format.json { render json: @location, status: :created, location: @location }
    else
      format.html { render action: "new" }
      format.json { render json: @location.errors, status: :unprocessable_entity }
    end
  end
end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to locations_url, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def download
    @locations = Location.all
    respond_to do |format| 
       format.xlsx {render xlsx: 'download',filename: "locations.xlsx"}
    end
end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:name, :address, :longitude, :latitude, :region_id,:place_id, :customer_character , :contact, :sales_specialist_id , :tel_fax_email , :object_type , :customer_classification , locations_assortments_attributes: [:id,:assortment_id,:_destroy, :location_id] ,technical_goods_assortments_attributes:[:id ,:ap1_id, :ap2_id, :ap3_id, :ap4_id, :ap5_id, :ap6_id, :ap7_id, :ap8_id, :b1_id, :b2_id, :b3_id, :b4_id, :b5_id, :b6_id , :location_id,:_destroy])
    end
end
