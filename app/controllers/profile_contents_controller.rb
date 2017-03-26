class ProfileContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile_content, only: [:show, :edit, :update, :destroy]

  # GET /profile_contents
  # GET /profile_contents.json
  def index
    @profile_contents = ProfileContent.all
  end

  # GET /profile_contents/1
  # GET /profile_contents/1.json
  def show
  end

  # GET /profile_contents/new
  def new
    @profile_content = ProfileContent.new
  end

  # GET /profile_contents/1/edit
  def edit
  end

  # POST /profile_contents
  # POST /profile_contents.json
  def create
    @profile_content = ProfileContent.new(profile_content_params)

    respond_to do |format|
      if @profile_content.save
        format.html { redirect_to @profile_content, notice: 'Profile content was successfully created.' }
        format.json { render :show, status: :created, location: @profile_content }
      else
        format.html { render :new }
        format.json { render json: @profile_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_contents/1
  # PATCH/PUT /profile_contents/1.json
  def update
    respond_to do |format|
      if @profile_content.update(profile_content_params)
        format.html { redirect_to @profile_content, notice: 'Profile content was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_content }
      else
        format.html { render :edit }
        format.json { render json: @profile_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_contents/1
  # DELETE /profile_contents/1.json
  def destroy
    @profile_content.destroy
    respond_to do |format|
      format.html { redirect_to profile_contents_url, notice: 'Profile content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_content
      @profile_content = ProfileContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_content_params
      params.require(:profile_content).permit(:title, :content)
    end
end
