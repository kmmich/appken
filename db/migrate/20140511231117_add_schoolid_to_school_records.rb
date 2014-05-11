class AddSchoolidToSchoolRecords < ActiveRecord::Migration
  def change
    add_column :school_records, :school_id, :integer
  end
end
