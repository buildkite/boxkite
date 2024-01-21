class RepositoryTypesController < ApplicationController
  before_action :set_repository_type, only: %i[ show edit update destroy ]

  # GET /repository_types or /repository_types.json
  def index
    @repository_types = RepositoryType.all
  end

  # GET /repository_types/1 or /repository_types/1.json
  def show
  end

  # GET /repository_types/new
  def new
    @repository_type = RepositoryType.new
  end

  # GET /repository_types/1/edit
  def edit
  end

  # POST /repository_types or /repository_types.json
  def create
    @repository_type = RepositoryType.new(repository_type_params)

    respond_to do |format|
      if @repository_type.save
        format.html { redirect_to repository_type_url(@repository_type), notice: "Repository type was successfully created." }
        format.json { render :show, status: :created, location: @repository_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @repository_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repository_types/1 or /repository_types/1.json
  def update
    respond_to do |format|
      if @repository_type.update(repository_type_params)
        format.html { redirect_to repository_type_url(@repository_type), notice: "Repository type was successfully updated." }
        format.json { render :show, status: :ok, location: @repository_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @repository_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repository_types/1 or /repository_types/1.json
  def destroy
    @repository_type.destroy!

    respond_to do |format|
      format.html { redirect_to repository_types_url, notice: "Repository type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repository_type
      @repository_type = RepositoryType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repository_type_params
      params.require(:repository_type).permit(:name)
    end
end
