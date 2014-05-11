class CandidateCampaign < ActiveRecord::Base
	belongs_to :candidate
	belongs_to :campaign
end
