class VacinasController < ApplicationController
  before_action :set_vacina, only: [:show, :edit, :update, :destroy]

  # GET /vacinas
  # GET /vacinas.json
  def index
    @vacinas = Vacina.all
  end
  
  def historico_vacinas
    @vacinas = Vacina.por_animal params[:id]   
  end
  
  # GET /vacinas/1
  # GET /vacinas/1.json
  def show
  end

  # GET /vacinas/new
  def new
    @vacina = Vacina.new
  end

  # GET /vacinas/1/edit
  def edit
  end

  # POST /vacinas
  # POST /vacinas.json
  def create
    @vacina = Vacina.new(vacina_params)

    respond_to do |format|
      if @vacina.save
        format.html { redirect_to @vacina, notice: 'Vacina was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vacina }
      else
        format.html { render action: 'new' }
        format.json { render json: @vacina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacinas/1
  # PATCH/PUT /vacinas/1.json
  def update
    respond_to do |format|
      if @vacina.update(vacina_params)
        format.html { redirect_to @vacina, notice: 'Vacina was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vacina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacinas/1
  # DELETE /vacinas/1.json
  def destroy
    @vacina.destroy
    respond_to do |format|
      format.html { redirect_to vacinas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacina
      @vacina = Vacina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacina_params
      params.require(:vacina).permit(:tipo_vacina_id, :medicamento_id, :animal_id, :data)
    end
end
