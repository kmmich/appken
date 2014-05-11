class CreateCandidateCampaigns < ActiveRecord::Migration
  def change
    create_table :candidate_campaigns do |t|
      t.integer :campaign_id
      t.integer :candidate_id
      t.integer :candidate_status

      t.timestamps
    end
  end
end
