class AddCandidateIdToEmployerRecords < ActiveRecord::Migration
  def change
    add_column :employer_records, :candidate_id, :integer
  end
end
