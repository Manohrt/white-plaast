class RemoveOrderNoFromPurchase < ActiveRecord::Migration
  def change
    remove_column :purchases, :order_no, :string
  end
end
