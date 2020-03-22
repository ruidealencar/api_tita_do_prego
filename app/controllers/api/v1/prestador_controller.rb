class Api::V1::PrestadorController < Api::V1::ApiController
  before_action :set_prestador, only: [:show, :update, :destroy]

  # GET /api/v1/prestador.json
  def index
    @prestador = Prestador.all
    render json: @prestador
  end

  # GET /api/v1/prestador/1
  def show
    render json: @prestador
  end

  # POST /api/v1/prestados
  def create
    @prestador = Prestador.new(prestador_params)

    if @prestador.save
      render json: @prestador, status: :created
    else
      render json: @prestador.errors, status: :unprocessable_entit
    end
  end

  # PATCH/PUT /api/v1/prestador/1
  def update
    if @prestador.update(prestador_params)
      render json: @prestador
    else
      render json: @prestador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/prestadors/1
  def destroy
    @prestador.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_prestador
      @prestador = Prestador.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prestador_params
      params.require(:prestador).permit( :nome, :latitude, :longitude, :horario, :telefone )
    end
end
