class Candidate < ActiveRecord::Base
	has_many :employer_records
	has_many :employers, through: :employer_records
	has_many :school_records
	has_many :schools, through: :school_records
	has_and_belongs_to_many :campaigns

	accepts_nested_attributes_for :employer_records
end
