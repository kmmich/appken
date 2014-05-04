class AddEmployerIdToEmployerRecords < ActiveRecord::Migration
  def change
    add_column :employer_records, :employer_id, :integer
  end
end
