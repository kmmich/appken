class AddDecisionToCandidateElements < ActiveRecord::Migration
  def change
    add_column :candidate_elements, :decision, :integer
  end
end
