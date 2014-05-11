class Campaign < ActiveRecord::Base
	has_many :elements
	
	has_many :candidate_campaigns
	has_many :candidates, through: :candidate_campaigns
	
	accepts_nested_attributes_for :candidates, :candidate_campaigns, :elements
end