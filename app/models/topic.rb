class Topic < ActiveRecord::Base
	belongs_to :expert
	has_many :articles
	has_many :rebuttals
end
