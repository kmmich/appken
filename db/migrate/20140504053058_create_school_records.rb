class CreateSchoolRecords < ActiveRecord::Migration
  def change
    create_table :school_records do |t|
      t.date :start_date
      t.date :end_date
      t.string :department
      t.string :degree

      t.timestamps
    end
  end
end
