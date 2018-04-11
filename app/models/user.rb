class User < ApplicationRecord
  validates :password, length: { minimum: 3 }
  has_secure_password

end
