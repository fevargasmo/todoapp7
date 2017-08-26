class SalonsController < ApplicationController
  before_action :set_salon, only: [:show, :update, :destroy]

  # GET /salons
  def index
    @salons = Salon.all

    render json: @salons
  end

  # GET /salons/1
  def show
    render json: @salon
  end

  # POST /salons
  def create
    @salon = Salon.new(salon_params)

    if @salon.save
      render json: @salon, status: :created, location: @salon
    else
      render json: @salon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /salons/1
  def update
    if @salon.update(salon_params)
      render json: @salon
    else
      render json: @salon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /salons/1
  def destroy
    @salon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salon
      @salon = Salon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def salon_params
      params.require(:salon).permit(:numero, :edificio, :capacidad)
    end
end
