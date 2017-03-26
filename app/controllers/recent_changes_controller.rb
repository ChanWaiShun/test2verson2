class RecentChangesController < ApplicationController
  before_action :set_recent_change, only: [:show, :edit, :update, :destroy]

  # GET /recent_changes
  # GET /recent_changes.json
  def index
    @recent_changes = RecentChange.all
  end

  # GET /recent_changes/1
  # GET /recent_changes/1.json
  def show
    @recent_change_comments = @recent_change.recent_change_comments.all
    @recent_change_comment = @recent_change.recent_change_comments.build
  end

  # GET /recent_changes/new
  def new
    @recent_change = RecentChange.new
  end

  # GET /recent_changes/1/edit
  def edit
  end

  # POST /recent_changes
  # POST /recent_changes.json
  def create
    @recent_change = RecentChange.new(recent_change_params)

    respond_to do |format|
      if @recent_change.save
        format.html { redirect_to @recent_change, notice: 'Recent change was successfully created.' }
        format.json { render :show, status: :created, location: @recent_change }
      else
        format.html { render :new }
        format.json { render json: @recent_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recent_changes/1
  # PATCH/PUT /recent_changes/1.json
  def update
    respond_to do |format|
      if @recent_change.update(recent_change_params)
        format.html { redirect_to @recent_change, notice: 'Recent change was successfully updated.' }
        format.json { render :show, status: :ok, location: @recent_change }
      else
        format.html { render :edit }
        format.json { render json: @recent_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recent_changes/1
  # DELETE /recent_changes/1.json
  def destroy
    @recent_change.destroy
    respond_to do |format|
      format.html { redirect_to recent_changes_url, notice: 'Recent change was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recent_change
      @recent_change = RecentChange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recent_change_params
      params.require(:recent_change).permit(:version, :date, :title, :body)
    end
end
