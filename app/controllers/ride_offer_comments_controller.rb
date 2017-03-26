class RideOfferCommentsController < ApplicationController
  before_action :set_ride_offer_comment, only: [:show, :edit, :update, :destroy]

  # GET /ride_offer_comments
  # GET /ride_offer_comments.json
  def index
    @ride_offer_comments = RideOfferComment.all
  end

  # GET /ride_offer_comments/1
  # GET /ride_offer_comments/1.json
  def show
  end

  # GET /ride_offer_comments/new
  def new
    @ride_offer_comment = RideOfferComment.new
  end

  # GET /ride_offer_comments/1/edit
  def edit
  end

  # POST /ride_offer_comments
  # POST /ride_offer_comments.json
  def create
    @ride_offer_comment = RideOfferComment.new(ride_offer_comment_params)

    respond_to do |format|
      if @ride_offer_comment.save
        format.html { redirect_to @ride_offer_comment, notice: 'Ride offer comment was successfully created.' }
        format.json { render :show, status: :created, location: @ride_offer_comment }
      else
        format.html { render :new }
        format.json { render json: @ride_offer_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ride_offer_comments/1
  # PATCH/PUT /ride_offer_comments/1.json
  def update
    respond_to do |format|
      if @ride_offer_comment.update(ride_offer_comment_params)
        format.html { redirect_to @ride_offer_comment, notice: 'Ride offer comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ride_offer_comment }
      else
        format.html { render :edit }
        format.json { render json: @ride_offer_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ride_offer_comments/1
  # DELETE /ride_offer_comments/1.json
  def destroy
    @ride_offer_comment.destroy
    respond_to do |format|
      format.html { redirect_to ride_offer_comments_url, notice: 'Ride offer comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ride_offer_comment
      @ride_offer_comment = RideOfferComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ride_offer_comment_params
      params.require(:ride_offer_comment).permit(:user_name, :body, :ride_offer_id)
    end
end
