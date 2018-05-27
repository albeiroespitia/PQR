class ExternalFilesController < ApplicationController
  before_action :set_external_file, only: [:show, :edit, :update, :destroy]

  # GET /external_files
  # GET /external_files.json
  def index
    @external_files = ExternalFile.all
  end

  # GET /external_files/1
  # GET /external_files/1.json
  def show
  end

  # GET /external_files/new
  def new
    @external_file = ExternalFile.new
  end

  # GET /external_files/1/edit
  def edit
  end

  # POST /external_files
  # POST /external_files.json
  def create
    @external_file = ExternalFile.new(external_file_params)

    respond_to do |format|
      if @external_file.save
        format.html { redirect_to @external_file, notice: 'External file was successfully created.' }
        format.json { render :show, status: :created, location: @external_file }
      else
        format.html { render :new }
        format.json { render json: @external_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /external_files/1
  # PATCH/PUT /external_files/1.json
  def update
    respond_to do |format|
      if @external_file.update(external_file_params)
        format.html { redirect_to @external_file, notice: 'External file was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_file }
      else
        format.html { render :edit }
        format.json { render json: @external_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_files/1
  # DELETE /external_files/1.json
  def destroy
    @external_file.destroy
    respond_to do |format|
      format.html { redirect_to external_files_url, notice: 'External file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_file
      @external_file = ExternalFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_file_params
      params.require(:external_file).permit(:url)
    end
end
