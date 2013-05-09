class Movie < ActiveRecord::Base
  attr_accessible :description, :rating, :title
  validate  :description , :presence => true
  validate  :title , :presence => true 
  validate  :rating , :presence => true 
  validate  :title,  :uniqueness => true
  has_many  :reviews
  has_many  :califications
  belongs_to :user

  def av_calif
  	if self.califications.count != 0 
  	  self.califications.sum{ |c|  c.value } / self.califications.count.to_f 
  	else
  	   'No definido'
  	end
  end
  
end
