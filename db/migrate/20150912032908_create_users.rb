class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, uniqueness: true
      t.integer :birthyear, null: false
      t.string :email, null: false, uniqueness: true
      t.string :gender, null: false
      t.integer :zipcode, null: false
      # t.references :demographic

      t.timestamps null: false
    end
  end
end




# fix association between users and demographic
# add remaining validations
