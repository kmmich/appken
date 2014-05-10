class Campaign < ActiveRecord::Base
	has_many :elements
	has_and_belongs_to_many :candidates
	accepts_nested_attributes_for :elements, allow_destroy: true
end