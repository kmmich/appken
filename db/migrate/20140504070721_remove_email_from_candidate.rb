class RemoveEmailFromCandidate < ActiveRecord::Migration
  def change
    remove_column :candidates, :email, :string
  end
end
