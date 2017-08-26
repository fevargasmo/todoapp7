class CamisetasController < ApplicationController
  before_action :set_camiseta, only: [:show, :update, :destroy]

  # GET /camisetas
  def index
    @camisetas = Camiseta.all

    render json: @camisetas
  end

  # GET /camisetas/1
  def show
    render json: @camiseta
  end

  # POST /camisetas
  def create
    @camiseta = Camiseta.new(camiseta_params)

    if @camiseta.save
      render json: @camiseta, status: :created, location: @camiseta
    else
      render json: @camiseta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /camisetas/1
  def update
    if @camiseta.update(camiseta_params)
      render json: @camiseta
    else
      render json: @camiseta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /camisetas/1
  def destroy
    @camiseta.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camiseta
      @camiseta = Camiseta.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def camiseta_params
      params.require(:camiseta).permit(:marca, :talla, :color)
    end
end
