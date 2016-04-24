class AddLoginToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|	
      t.string :encrypted_password 
      t.string :salt

    end
  end
end
