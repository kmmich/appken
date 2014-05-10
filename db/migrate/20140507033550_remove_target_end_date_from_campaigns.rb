class RemoveTargetEndDateFromCampaigns < ActiveRecord::Migration
  def change
    remove_column :campaigns, :target_end_date, :date
  end
end
