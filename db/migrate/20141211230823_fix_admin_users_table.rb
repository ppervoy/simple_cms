class FixAdminUsersTable < ActiveRecord::Migration
  def up
  	rename_column :admin_users, :lst_name, :last_name
  end

  def down
  	rename_column :admin_users, :last_name, :lst_name
  end
end
