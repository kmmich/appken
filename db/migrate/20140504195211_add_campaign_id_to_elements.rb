class AddCampaignIdToElements < ActiveRecord::Migration
  def change
    add_column :elements, :campaign_id, :integer
  end
end
