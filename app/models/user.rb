class User < ActiveRecord::Base
  
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: {in: 6..15}
  # Remember to create a migration!

  # ej. User.authenticate('fernando@codea.mx', 'qwerty')
  def self.new_user(*args)

  end
  def self.authenticate(email, password)

    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
  end

end
