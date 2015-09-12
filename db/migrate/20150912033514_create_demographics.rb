class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.string :name, null: false


      t.timestamps null: false
    end
  end
end
