class Expenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string  :vendor
      t.string  :description
      t.date  :date
      t.decimal  :total, precision: 10, scale: 2
      t.string  :payment_method
      t.integer  :user_id
    end
  end
end
