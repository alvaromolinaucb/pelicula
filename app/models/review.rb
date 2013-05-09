class Review < ActiveRecord::Base
	belongs_to :movie
	belongs_to :user
	attr_accessible :description, :movie_id
end