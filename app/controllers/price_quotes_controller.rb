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
  end

  # POST /price_quotes
  # POST /price_quotes.json
  def create
    @client = Client.find_by email: current_user.email

    price_quote = PriceQuote.create(description: params[:description], photographer_id: params[:photographer_id], client_id: @client.id, status: :open)
    if price_quote
      flash[:notice] = 'Orçamento enviado'
      redirect_to :back
    end
  end

  # PATCH/PUT /price_quotes/1
  # PATCH/PUT /price_quotes/1.json
  def update
    respond_to do |format|
      if @price_quote.update(price_quote_params)
        format.html { redirect_to @price_quote, notice: 'Price quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @price_quote }
      else
        format.html { render :edit }
        format.json { render json: @price_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_quotes/1
  # DELETE /price_quotes/1.json
  def destroy
    @price_quote.destroy
    respond_to do |format|
      format.html { redirect_to price_quotes_url, notice: 'Price quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_quote
      @price_quote = PriceQuote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_quote_params
      params.fetch(:price_quote, {})
    end
end
