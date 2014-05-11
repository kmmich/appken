class AddCompletedToCandidateElements < ActiveRecord::Migration
  def change
    add_column :candidate_elements, :completed, :integer
  end
end
