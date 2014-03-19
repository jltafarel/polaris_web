class PesagensController < ApplicationController
  before_action :set_pesagem, only: [:show, :edit, :update, :destroy]

  # GET /pesagens
  # GET /pesagens.json
  def index
    @pesagens = Pesagem.all
  end

  def pesagem_animal
    @pesagens = Pesagem.find(:all, :conditions => ['animal_id = ?', params[:id]])
  end
  # GET /pesagens/1
  # GET /pesagens/1.json
  def show
  end

  # GET /pesagens/new
  def new
    @pesagem = Pesagem.new
  end

  # GET /pesagens/1/edit
  def edit
  end

  # POST /pesagens
  # POST /pesagens.json
  def create
    @pesagem = Pesagem.new(pesagem_params)

    respond_to do |format|
      if @pesagem.save
        format.html { redirect_to @pesagem, notice: 'Pesagem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pesagem }
      else
        format.html { render action: 'new' }
        format.json { render json: @pesagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pesagens/1
  # PATCH/PUT /pesagens/1.json
  def update
    respond_to do |format|
      if @pesagem.update(pesagem_params)
        format.html { redirect_to @pesagem, notice: 'Pesagem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pesagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesagens/1
  # DELETE /pesagens/1.json
  def destroy
    @pesagem.destroy
    respond_to do |format|
      format.html { redirect_to pesagens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pesagem
      @pesagem = Pesagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pesagem_params
      params.require(:pesagem).permit(:peso, :data, :animal_id)
    end
end
