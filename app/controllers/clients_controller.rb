class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  require 'carrierwave/orm/activerecord'

  # GET /clients
  # GET /clients.json
  def index
    @photographers = Photographer.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)
    @user = User.new(email: client_params['email'], password: client_params['password'])


    respond_to do |format|
      if @client.save && @user.save
        sign_in @user
        format.html {redirect_to Clearance.configuration.redirect_url}
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def review
    @photographer = Photographer.find_by email: current_user.email
    
    review = ClientReview.create(comment: params[:comment], rating: params[:rating], client_id: params[:client_id], photographer_id: @photographer.id ) 
    if review 
      redirect_to :back 
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :phone, :city, :state, :country, :email, :password, :string, :avatar)
    end
end
