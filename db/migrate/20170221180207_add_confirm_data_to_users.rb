class AddConfirmDataToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :card_number, :integer
    add_column :users, :ship_adress, :string
    add_column :users, :bill_adress, :string
  end
end
