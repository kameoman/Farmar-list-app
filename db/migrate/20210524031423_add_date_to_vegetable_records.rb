class AddDateToVegetableRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :vegetable_records, :date, :date
  end
end
