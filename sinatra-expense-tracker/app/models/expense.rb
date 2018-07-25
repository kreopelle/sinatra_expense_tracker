class Expense < ActiveRecord::Base
  belongs_to :user
  validates :vendor, :description, :date, :total, presence: true

end
