class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.string :gender, null: false
      t.string :age_range, null: false


      t.timestamps null: false
    end
  end
end
