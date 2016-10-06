class ProfileController < ApplicationController
  before_action :require_login

  def index
    photographer = Photographer.find_by email: current_user.email
    if photographer
      @user = photographer
    else
      @user = Client.find_by email: current_user.email
    end
  end

  def my_quotes
    if current_user.tipo == "Fotógrafo"
      @quotes = PriceQuote.where(photographer_id: current_user.details.id)
    else if current_user.tipo == "Cliente"
      @quotes = PriceQuote.where(client_id: current_user.details.id)
      end
    end
    respond_to do |format|
      format.html
      format.pdf do
        pdf = QuotesReport.new(@quotes)
        send_data pdf.render, filename: 'RelatórioOrçamentos.pdf', :width => pdf.bounds.width,
        type: 'application/pdf', disposition: :inline, :page_size => 'A4', :page_layout => :portrait
      end
    end
  end
end
