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

  def details
    if tipo == 'Fotógrafo'
      return Photographer.find_by email: self[:email]
    elsif tipo == "Cliente"
      return Client.find_by email: self[:email]
    else
      return nil
    end
  end

end
