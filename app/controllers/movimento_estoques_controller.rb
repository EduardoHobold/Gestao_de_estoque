class MovimentoEstoquesController < ApplicationController
  before_action :set_movimento_estoque, only: [:show, :edit, :update, :destroy]

  # GET /movimento_estoques
  # GET /movimento_estoques.json
  def index
    @movimento_estoques = MovimentoEstoque.all
  end

  # GET /movimento_estoques/1
  # GET /movimento_estoques/1.json
  def show
  end

  # GET /movimento_estoques/new
  def new
    @movimento_estoque = MovimentoEstoque.new
  end

  # GET /movimento_estoques/1/edit
  def edit
  end

  # POST /movimento_estoques
  # POST /movimento_estoques.json
  def create
    @movimento_estoque = MovimentoEstoque.new(movimento_estoque_params)

    respond_to do |format|
      if @movimento_estoque.save
        format.html { redirect_to @movimento_estoque, notice: 'Movimento estoque was successfully created.' }
        format.json { render :show, status: :created, location: @movimento_estoque }
      else
        format.html { render :new }
        format.json { render json: @movimento_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimento_estoques/1
  # PATCH/PUT /movimento_estoques/1.json
  def update
    respond_to do |format|
      if @movimento_estoque.update(movimento_estoque_params)
        format.html { redirect_to @movimento_estoque, notice: 'Movimento estoque was successfully updated.' }
        format.json { render :show, status: :ok, location: @movimento_estoque }
      else
        format.html { render :edit }
        format.json { render json: @movimento_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimento_estoques/1
  # DELETE /movimento_estoques/1.json
  def destroy
    @movimento_estoque.destroy
    respond_to do |format|
      format.html { redirect_to movimento_estoques_url, notice: 'Movimento estoque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimento_estoque
      @movimento_estoque = MovimentoEstoque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimento_estoque_params
      params.require(:movimento_estoque).permit(:data, :quantidade, :pessoa_id, :operacao_id, :produto_id)
    end
end
