class AddDetailsToAccounts < ActiveRecord::Migration[8.0]
  def change
    add_column :accounts, :first_name, :string
    add_column :accounts, :middle_name, :string
    add_column :accounts, :last_name, :string
    add_column :accounts, :phone_number, :string
  end
end
