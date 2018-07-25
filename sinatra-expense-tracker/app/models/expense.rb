class Expense < ActiveRecord::Base
  belongs_to :user
  validates :vendor, :description, :date, :total, :payment_method, presence: true

end
