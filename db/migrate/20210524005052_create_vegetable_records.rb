class CreateVegetableRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :vegetable_records do |t|
      t.string :name
      t.string :varaiety
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
