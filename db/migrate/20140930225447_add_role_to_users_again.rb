class AddRoleToUsersAgain < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer
  end
end
