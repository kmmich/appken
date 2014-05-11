class SchoolRecord < ActiveRecord::Base
	belongs_to :Candidate
	belongs_to :School
end
