class CreateEmployerRecords < ActiveRecord::Migration
  def change
    create_table :employer_records do |t|
      t.date :start_date
      t.date :end_date
      t.string :group
      t.string :title

      t.timestamps
    end
  end
end
