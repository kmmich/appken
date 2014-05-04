class CandidateElement < ActiveRecord::Base
	belongs_to :candidate
	belongs_to :element
end
