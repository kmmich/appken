class Candidate < ActiveRecord::Base
	has_many :employer_records
	has_many :employers, through: :employer_records
	has_many :school_records
	has_many :schools, through: :school_records
	has_and_belongs_to_many :recruiting_processes

	attr_accessor :we_company, :we_title, :we_start_month, :we_start_year, :we_end_month, :we_end_year
end
