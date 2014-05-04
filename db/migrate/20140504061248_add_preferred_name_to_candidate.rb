class AddPreferredNameToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :preferred_name, :string
  end
end
