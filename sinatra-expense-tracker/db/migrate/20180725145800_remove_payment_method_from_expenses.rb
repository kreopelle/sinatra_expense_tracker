class RemovePaymentMethodFromExpenses < ActiveRecord::Migration
  def change
    remove_column :expenses, :payment_method, :string
  end
end
