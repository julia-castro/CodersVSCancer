class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.string :gender, null: false
      t.string :age, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
