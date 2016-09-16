class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit: 100
      t.string :email, limit: 50
      t.string :provider
      t.string :uid

      t.timestamps null: false
    end
  end
end
