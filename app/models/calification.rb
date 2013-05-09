class Calification < ActiveRecord::Base
	belongs_to :movie
	attr_accessible :value

	validates :user_id, :uniqueness => { :scope => :movie_id,
		:message => "Un usuario solo puede calificar una pelicula" }
	belongs_to :user

end
