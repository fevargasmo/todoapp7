class CuadernosController < ApplicationController
  before_action :set_cuaderno, only: [:show, :update, :destroy]

  # GET /cuadernos
  def index
    @cuadernos = Cuaderno.all

    render json: @cuadernos
  end

  # GET /cuadernos/1
  def show
    render json: @cuaderno
  end

  # POST /cuadernos
  def create
    @cuaderno = Cuaderno.new(cuaderno_params)

    if @cuaderno.save
      render json: @cuaderno, status: :created, location: @cuaderno
    else
      render json: @cuaderno.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cuadernos/1
  def update
    if @cuaderno.update(cuaderno_params)
      render json: @cuaderno
    else
      render json: @cuaderno.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cuadernos/1
  def destroy
    @cuaderno.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuaderno
      @cuaderno = Cuaderno.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cuaderno_params
      params.require(:cuaderno).permit(:marca, :hojas, :color)
    end
end
