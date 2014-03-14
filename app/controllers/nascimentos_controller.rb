class NascimentosController < ApplicationController
  before_action :set_nascimento, only: [:show, :edit, :update, :destroy]

  # GET /nascimentos
  # GET /nascimentos.json
  def index
    @nascimentos = Nascimento.all
  end

  # GET /nascimentos/1
  # GET /nascimentos/1.json
  def show
  end

  # GET /nascimentos/new
  def new
    @nascimento = Nascimento.new
  end

  # GET /nascimentos/1/edit
  def edit
  end

  # POST /nascimentos
  # POST /nascimentos.json
  def create
    @nascimento = Nascimento.new(nascimento_params)

    respond_to do |format|
      if @nascimento.save
        format.html { redirect_to @nascimento, notice: 'Nascimento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @nascimento }
      else
        format.html { render action: 'new' }
        format.json { render json: @nascimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nascimentos/1
  # PATCH/PUT /nascimentos/1.json
  def update
    respond_to do |format|
      if @nascimento.update(nascimento_params)
        format.html { redirect_to @nascimento, notice: 'Nascimento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nascimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nascimentos/1
  # DELETE /nascimentos/1.json
  def destroy
    @nascimento.destroy
    respond_to do |format|
      format.html { redirect_to nascimentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nascimento
      @nascimento = Nascimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nascimento_params
      params.require(:nascimento).permit(:data)
    end
end
