class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
