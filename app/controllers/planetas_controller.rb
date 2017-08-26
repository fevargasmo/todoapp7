class PlanetasController < ApplicationController
  before_action :set_planeta, only: [:show, :update, :destroy]

  # GET /planetas
  def index
    @planetas = Planeta.all

    render json: @planetas
  end

  # GET /planetas/1
  def show
    render json: @planeta
  end

  # POST /planetas
  def create
    @planeta = Planeta.new(planeta_params)

    if @planeta.save
      render json: @planeta, status: :created, location: @planeta
    else
      render json: @planeta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /planetas/1
  def update
    if @planeta.update(planeta_params)
      render json: @planeta
    else
      render json: @planeta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /planetas/1
  def destroy
    @planeta.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planeta
      @planeta = Planeta.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def planeta_params
      params.require(:planeta).permit(:nombre, :masa, :volumen)
    end
end
