class AddUserdetailToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :middlename, :string
    add_column :users, :lastname, :string
    add_column :users, :gender, :boolean
    add_column :users, :date_of_birth, :datetime
    add_column :users, :address, :string
    add_column :users, :usertype, :boolean, default: false
  end
end
