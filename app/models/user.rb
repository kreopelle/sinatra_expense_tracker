class User < ActiveRecord::Base
  has_many :expenses
  validates :username, :email, presence: true

  has_secure_password

end
