class PaissController < ApplicationController
  before_action :set_pais, only: [:show, :update, :destroy]

  # GET /paiss
  def index
    @paiss = Pais.all

    render json: @paiss
  end

  # GET /paiss/1
  def show
    render json: @pais
  end

  # POST /paiss
  def create
    @pais = Pais.new(pais_params)

    if @pais.save
      render json: @pais, status: :created, location: @pais
    else
      render json: @pais.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paiss/1
  def update
    if @pais.update(pais_params)
      render json: @pais
    else
      render json: @pais.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paiss/1
  def destroy
    @pais.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pais
      @pais = Pais.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pais_params
      params.require(:pais).permit(:continente, :presidente, :himno)
    end
end
