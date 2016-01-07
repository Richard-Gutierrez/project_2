class User < ActiveRecord::Base
  has_secure_password
  has_one :card

  validates :email, presence: true, uniqueness: true

end
