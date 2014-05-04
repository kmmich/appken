class RecruitingProcess < ActiveRecord::Base
	has_many :elements
	has_and_belongs_to_many :candidates
end
