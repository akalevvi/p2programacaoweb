class User < ApplicationRecord
  include Clearance::User

  def tipo
    if Photographer.find_by email: self[:email]
      return 'Fotógrafo'
    elsif Client.find_by email: self[:email]
      return 'Cliente'
    else
      return nil
    end
  end

end
