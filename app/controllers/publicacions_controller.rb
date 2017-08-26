class PublicacionsController < ApplicationController
  before_action :set_publicacion, only: [:show, :update, :destroy]

  # GET /publicacions
  def index
    @publicacions = Publicacion.all

    render json: @publicacions
  end

  # GET /publicacions/1
  def show
    render json: @publicacion
  end

  # POST /publicacions
  def create
    @publicacion = Publicacion.new(publicacion_params)

    if @publicacion.save
      render json: @publicacion, status: :created, location: @publicacion
    else
      render json: @publicacion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /publicacions/1
  def update
    if @publicacion.update(publicacion_params)
      render json: @publicacion
    else
      render json: @publicacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /publicacions/1
  def destroy
    @publicacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicacion
      @publicacion = Publicacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def publicacion_params
      params.require(:publicacion).permit(:titulo, :cuerpo, :autor)
    end
end
