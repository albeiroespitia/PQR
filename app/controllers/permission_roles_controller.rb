class PermissionRolesController < ApplicationController
  before_action :set_permission_role, only: [:show, :edit, :update, :destroy]

  # GET /permission_roles
  # GET /permission_roles.json
  def index
    @permission_roles = PermissionRole.all
  end

  # GET /permission_roles/1
  # GET /permission_roles/1.json
  def show
  end

  # GET /permission_roles/new
  def new
    @permission_role = PermissionRole.new
  end

  # GET /permission_roles/1/edit
  def edit
  end

  # POST /permission_roles
  # POST /permission_roles.json
  def create
    @permission_role = PermissionRole.new(permission_role_params)

    respond_to do |format|
      if @permission_role.save
        format.html { redirect_to @permission_role, notice: 'Permission role was successfully created.' }
        format.json { render :show, status: :created, location: @permission_role }
      else
        format.html { render :new }
        format.json { render json: @permission_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permission_roles/1
  # PATCH/PUT /permission_roles/1.json
  def update
    respond_to do |format|
      if @permission_role.update(permission_role_params)
        format.html { redirect_to @permission_role, notice: 'Permission role was successfully updated.' }
        format.json { render :show, status: :ok, location: @permission_role }
      else
        format.html { render :edit }
        format.json { render json: @permission_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permission_roles/1
  # DELETE /permission_roles/1.json
  def destroy
    @permission_role.destroy
    respond_to do |format|
      format.html { redirect_to permission_roles_url, notice: 'Permission role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permission_role
      @permission_role = PermissionRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permission_role_params
      params.require(:permission_role).permit(:permission_id, :role_id)
    end
end
