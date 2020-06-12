class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false, default: ""
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
