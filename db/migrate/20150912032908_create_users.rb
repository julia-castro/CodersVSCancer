class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :birthyear
      t.string :email
      t.string :gender
      t.integer :zipcode

      t.timestamps null: false
    end
  end
end
