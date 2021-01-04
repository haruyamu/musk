class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name,nul: false
      t.string :email,nul: false
      t.string :password,nul: false
      t.string :birthday
      t.string :birthplace
      t.string :comment
      t.timestamps
    end
  end
end
