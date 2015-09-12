class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.string :gender
      t.string :age
      t.references :user

      t.timestamps null: false
    end
  end
end
