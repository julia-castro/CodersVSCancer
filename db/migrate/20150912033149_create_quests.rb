class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.references :user

      t.timestamps null: false
    end
  end
end
