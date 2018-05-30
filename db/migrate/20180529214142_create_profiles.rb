class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name 
      t.string :bio 
      t.string :email 
      t.string :password_digest 
      t.timestamps
    end
  end
end
