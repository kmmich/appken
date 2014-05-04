class AddActiveToRecruitingProcess < ActiveRecord::Migration
  def change
    add_column :recruiting_processes, :active, :integer
  end
end
