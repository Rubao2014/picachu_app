class Api::V1::CadastrosController < Api::ApiController 
  before_action :set_cadastro, only: [:show, :edit, :update, :destroy]
  respond_to :json
  #before_action :authenticate


  def index
    @cads = Cadastro.all
    render json: @cads
  end

  def new
    @cadastro = Cadastro.new
  end

  def show
  end

  def create
    @cadastro = Cadastro.new(cadastro_params)

    respond_to do |format|
      if @cadastro.save
        format.json { render action: 'show', status: :created, location: @cadastro }
      else
        format.json { render json: @cadastro.errors, status: :unprocessable_entity }

      end
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro
      @cadastro = Cadastro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_params
      params.require(:cadastro).permit(:nome, :nasc, :endereco, :bairro, :cidade, :estado, :cep, :genero, :api_key)
    end


end
