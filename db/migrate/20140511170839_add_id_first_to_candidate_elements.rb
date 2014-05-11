class AddIdFirstToCandidateElements < ActiveRecord::Migration
  def change
    add_column :candidate_elements, :candidate_id, :integer
  end
end
