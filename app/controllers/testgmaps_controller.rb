class TestgmapsController < ApplicationController
  before_action :set_testgmap, only: [:show, :edit, :update, :destroy]

  # GET /testgmaps
  # GET /testgmaps.json
  def index
    @testgmaps = Testgmap.all
    @hash = Gmaps4rails.build_markers(@testgmaps) do |testgmap, marker|
      marker.lat testgmap.latitude
      marker.lng testgmap.longitude
      marker.infowindow testgmap.description
    end
  end

  # GET /testgmaps/1
  # GET /testgmaps/1.json
  def show
  end

  # GET /testgmaps/new
  def new
    @testgmap = Testgmap.new
  end

  # GET /testgmaps/1/edit
  def edit
  end

  # POST /testgmaps
  # POST /testgmaps.json
  def create
    @testgmap = Testgmap.new(testgmap_params)

    respond_to do |format|
      if @testgmap.save
        format.html { redirect_to @testgmap, notice: 'Testgmap was successfully created.' }
        format.json { render :show, status: :created, location: @testgmap }
      else
        format.html { render :new }
        format.json { render json: @testgmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testgmaps/1
  # PATCH/PUT /testgmaps/1.json
  def update
    respond_to do |format|
      if @testgmap.update(testgmap_params)
        format.html { redirect_to @testgmap, notice: 'Testgmap was successfully updated.' }
        format.json { render :show, status: :ok, location: @testgmap }
      else
        format.html { render :edit }
        format.json { render json: @testgmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testgmaps/1
  # DELETE /testgmaps/1.json
  def destroy
    @testgmap.destroy
    respond_to do |format|
      format.html { redirect_to testgmaps_url, notice: 'Testgmap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testgmap
      @testgmap = Testgmap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testgmap_params
      params.require(:testgmap).permit(:latitude, :longitude, :address, :description, :title, :test)
    end
end
