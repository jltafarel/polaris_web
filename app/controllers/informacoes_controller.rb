class InformacoesController < ApplicationController
  before_action :set_informacao, only: [:show, :edit, :update, :destroy]

  # GET /informacoes
  # GET /informacoes.json
  def index
    @informacoes = Informacao.all
  end

  # GET /informacoes/1
  # GET /informacoes/1.json
  def show
  end

  # GET /informacoes/new
  def new
    @informacao = Informacao.new
  end

  # GET /informacoes/1/edit
  def edit
  end

  # POST /informacoes
  # POST /informacoes.json
  def create
    @informacao = Informacao.new(informacao_params)

    respond_to do |format|
      if @informacao.save
        format.html { redirect_to @informacao, notice: 'Informacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @informacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @informacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacoes/1
  # PATCH/PUT /informacoes/1.json
  def update
    respond_to do |format|
      if @informacao.update(informacao_params)
        format.html { redirect_to @informacao, notice: 'Informacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @informacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacoes/1
  # DELETE /informacoes/1.json
  def destroy
    @informacao.destroy
    respond_to do |format|
      format.html { redirect_to informacoes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informacao
      @informacao = Informacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informacao_params
      params[:informacao]
    end
end
