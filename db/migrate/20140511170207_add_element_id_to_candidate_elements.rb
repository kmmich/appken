class AddElementIdToCandidateElements < ActiveRecord::Migration
  def change
    add_column :candidate_elements, :element_id, :integer
  end
end
