class PriceQuotesController < ApplicationController
  before_action :set_price_quote, only: [:show, :edit, :update, :destroy]

  # GET /price_quotes
  # GET /price_quotes.json
  def index
    @price_quotes = PriceQuote.all
  end

  # GET /price_quotes/1
  # GET /price_quotes/1.json
  def show
  end

  # GET /price_quotes/new
  def new
    @photographer = Photographer.find params[:photographer_id]
  end

  # GET /price_quotes/1/edit
  def edit
    puts @price_quote
  end

  # POST /price_quotes
  # POST /price_quotes.json
  def create
    @client = Client.find_by email: current_user.email

    price_quote = PriceQuote.create(description: params[:description], photographer_id: params[:photographer_id], client_id: @client.id, status: :aberto)
    if price_quote
      flash[:notice] = 'Orçamento enviado'
      redirect_to :back
    end
  end

  # PATCH/PUT /price_quotes/1
  # PATCH/PUT /price_quotes/1.json
  def update
    if @price_quote.update(price_quote_params)
      if current_user.tipo == "Fotógafo"
        @price_quote.update(status: :aceito)
      end
      flash[:notice] = 'Atualizado'
      redirect_to :my_quotes
    end
  end

  # DELETE /price_quotes/1
  # DELETE /price_quotes/1.json
  def destroy
    if @price_quote.destroy
      redirect_to :back
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_quote
      @price_quote = PriceQuote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_quote_params
      params.require(:price_quote).permit(:total,:description,:status)
    end
end
