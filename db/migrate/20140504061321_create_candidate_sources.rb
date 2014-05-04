class CreateCandidateSources < ActiveRecord::Migration
  def change
    create_table :candidate_sources do |t|
      t.string :name

      t.timestamps
    end
  end
end
