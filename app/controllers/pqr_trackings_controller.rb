class PqrTrackingsController < ApplicationController
  before_action :set_pqr_tracking, only: [:show, :edit, :update, :destroy]

  # GET /pqr_trackings
  # GET /pqr_trackings.json
  def index
    @pqr_trackings = PqrTracking.all
  end

  # GET /pqr_trackings/1
  # GET /pqr_trackings/1.json
  def show
  end

  # GET /pqr_trackings/new
  def new
    @pqr_tracking = PqrTracking.new
  end

  # GET /pqr_trackings/1/edit
  def edit
  end

  # POST /pqr_trackings
  # POST /pqr_trackings.json
  def create
    @pqr_tracking = PqrTracking.new(pqr_tracking_params)

    respond_to do |format|
      if @pqr_tracking.save
        format.html { redirect_to @pqr_tracking, notice: 'Pqr tracking was successfully created.' }
        format.json { render :show, status: :created, location: @pqr_tracking }
      else
        format.html { render :new }
        format.json { render json: @pqr_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pqr_trackings/1
  # PATCH/PUT /pqr_trackings/1.json
  def update
    respond_to do |format|
      if @pqr_tracking.update(pqr_tracking_params)
        format.html { redirect_to @pqr_tracking, notice: 'Pqr tracking was successfully updated.' }
        format.json { render :show, status: :ok, location: @pqr_tracking }
      else
        format.html { render :edit }
        format.json { render json: @pqr_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pqr_trackings/1
  # DELETE /pqr_trackings/1.json
  def destroy
    @pqr_tracking.destroy
    respond_to do |format|
      format.html { redirect_to pqr_trackings_url, notice: 'Pqr tracking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pqr_tracking
      @pqr_tracking = PqrTracking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pqr_tracking_params
      params.require(:pqr_tracking).permit(:pqr_id, :actual_user_id, :dest_user_id, :status_id, :department_id, :date, :review, :response)
    end
end
