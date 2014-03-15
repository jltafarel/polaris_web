class TipoVacinasController < ApplicationController
  before_action :set_tipo_vacina, only: [:show, :edit, :update, :destroy]

  # GET /tipo_vacinas
  # GET /tipo_vacinas.json
  def index
    @tipo_vacinas = TipoVacina.all
  end

  # GET /tipo_vacinas/1
  # GET /tipo_vacinas/1.json
  def show
  end

  # GET /tipo_vacinas/new
  def new
    @tipo_vacina = TipoVacina.new
  end

  # GET /tipo_vacinas/1/edit
  def edit
  end

  # POST /tipo_vacinas
  # POST /tipo_vacinas.json
  def create
    @tipo_vacina = TipoVacina.new(tipo_vacina_params)

    respond_to do |format|
      if @tipo_vacina.save
        format.html { redirect_to @tipo_vacina, notice: 'Salvo com sucesso' }
        format.json { render action: 'show', status: :created, location: @tipo_vacina }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_vacina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_vacinas/1
  # PATCH/PUT /tipo_vacinas/1.json
  def update
    respond_to do |format|
      if @tipo_vacina.update(tipo_vacina_params)
        format.html { redirect_to @tipo_vacina, notice: 'Alterado com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_vacina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_vacinas/1
  # DELETE /tipo_vacinas/1.json
  def destroy
    @tipo_vacina.destroy
    respond_to do |format|
      format.html { redirect_to tipo_vacinas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_vacina
      @tipo_vacina = TipoVacina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_vacina_params
      params.require(:tipo_vacina).permit(:tipo_vacina)
    end
end
