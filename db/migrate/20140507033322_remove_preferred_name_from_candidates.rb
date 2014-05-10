class RemovePreferredNameFromCandidates < ActiveRecord::Migration
  def change
    remove_column :candidates, :preferred_name, :string
  end
end
