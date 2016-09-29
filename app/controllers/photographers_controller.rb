class PhotographersController < ApplicationController
  before_action :set_photographer, only: [:show, :edit, :update, :destroy]

  # GET /photographers
  # GET /photographers.json
  def index
    @photographers = Photographer.all
  end

  # GET /photographers/1
  # GET /photographers/1.json
  def show
  end

  # GET /photographers/new
  def new
    @photographer = Photographer.new
  end

  # GET /photographers/1/edit
  def edit
  end

  # POST /photographers
  # POST /photographers.json
  def create
    @photographer = Photographer.new(photographer_params)
    @user = User.new(email: photographer_params['email'], password: photographer_params['password'])

    respond_to do |format|
      if @photographer.save && @user.save
        sign_in @user
        format.html {redirect_to Clearance.configuration.redirect_url}
      else
        format.html { render :new }
        format.json { render json: @photographer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photographers/1
  # PATCH/PUT /photographers/1.json
  def update
    respond_to do |format|
      if @photographer.update(photographer_params)
        format.html { redirect_to @photographer, notice: 'Sua conta foi atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @photographer }
      else
        format.html { render :edit }
        format.json { render json: @photographer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photographers/1
  # DELETE /photographers/1.json
  def destroy
    @photographer.destroy
    respond_to do |format|
      format.html { redirect_to photographers_url, notice: 'Photographer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photographer
      @photographer = Photographer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photographer_params
      params.require(:photographer).permit(:name, :phone, :city, :state, :country, :email, :password, :string, :avatar, :portfolio_link, :bio, :display_name)
    end
end
