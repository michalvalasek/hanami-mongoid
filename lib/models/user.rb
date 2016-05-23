require 'bcrypt'

class User
  include Mongoid::Document
  include BCrypt

  field :email, type: String, default: ""
  field :password_hash, type: String, default: ""

  validates :email, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
