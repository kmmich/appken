class Candidate < ActiveRecord::Base
	has_many :employer_records
	has_many :employers, through: :employer_records


	has_many :school_records
	has_many :schools, through: :school_records

	has_many :candidate_campaigns
	has_many :campaigns, through: :candidate_campaigns
	
	has_many :candidate_elements

	accepts_nested_attributes_for :employer_records, :candidate_campaigns, :campaigns
end
