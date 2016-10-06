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
end
