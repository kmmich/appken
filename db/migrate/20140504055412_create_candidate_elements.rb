class CreateCandidateElements < ActiveRecord::Migration
  def change
    create_table :candidate_elements do |t|
      t.integer :status

      t.timestamps
    end
  end
end
