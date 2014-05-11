class AddColToSchoolRecords < ActiveRecord::Migration
  def change
    add_column :school_records, :candidate_id, :integer
  end
end
