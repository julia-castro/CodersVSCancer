class CreateNudges < ActiveRecord::Migration
  def change
    create_table :nudges do |t|
      t.string :message
      t.references :user

      t.timestamps null: false
    end
  end
end
