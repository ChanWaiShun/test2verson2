class RecentChangeCommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recent_change_comment, only: [:show, :edit, :update, :destroy]

  # GET /recent_change_comments
  # GET /recent_change_comments.json
  def index
    @recent_change_comments = RecentChangeComment.all
  end

  # GET /recent_change_comments/1
  # GET /recent_change_comments/1.json
  def show
  end

  # GET /recent_change_comments/new
  def new
    @recent_change_comment = RecentChangeComment.new
  end

  # GET /recent_change_comments/1/edit
  def edit
  end

  # POST /recent_change_comments
  # POST /recent_change_comments.json
  def create
    @recent_change_comment = RecentChangeComment.new(recent_change_comment_params)

    respond_to do |format|
      if @recent_change_comment.save
        format.html { redirect_to @recent_change_comment, notice: 'Recent change comment was successfully created.' }
        format.json { render :show, status: :created, location: @recent_change_comment }
      else
        format.html { render :new }
        format.json { render json: @recent_change_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recent_change_comments/1
  # PATCH/PUT /recent_change_comments/1.json
  def update
    respond_to do |format|
      if @recent_change_comment.update(recent_change_comment_params)
        format.html { redirect_to @recent_change_comment, notice: 'Recent change comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @recent_change_comment }
      else
        format.html { render :edit }
        format.json { render json: @recent_change_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recent_change_comments/1
  # DELETE /recent_change_comments/1.json
  def destroy
    @recent_change_comment.destroy
    respond_to do |format|
      format.html { redirect_to recent_change_comments_url, notice: 'Recent change comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recent_change_comment
      @recent_change_comment = RecentChangeComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recent_change_comment_params
      params.require(:recent_change_comment).permit(:user_name, :body, :recent_change_id)
    end
end
