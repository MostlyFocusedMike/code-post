class AddDefaultBio < ActiveRecord::Migration[5.2]
  def change
    change_column(:users, :bio, :string, :default => "Add a bio with the edit menu!")
  end
end
