class User < ActiveRecord::Base

  attr_accessor :first_name, :last_name, :username, :password, :password_confirmation

  validates :first_name,
            :presence => true,
            :length => {
              :in => 1..15
            }
  validates :last_name,
            :presence => true,
            :length => {
              :in => 1..15
            }
  validates :username,
            :presence => true,
            :uniqueness => true,
            :length => {
              :in => 3..15
            }

  validates :password,
            :presence => true,
            :confirmation => true,
            :length => {
              :in => 6..15
            }


  def encrypt_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.password = BCrypt::Engine.hash_secret(password, salt)
    end
  end

  def clear_password
    self.password = nil
  end
end
