class CreateUsers < ActiveRecord::Migration
  
  def up
    create_table :users do |t| #, {:id => false}
      t.column "first_name", :string, :limit => 25
      t.string "lst_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      #t.datetime "created_at"
      #t.datetime "updated_at"
      t.timestamps #same as two before
    end
  end

  def down
  	drop_table :users
  end
end
