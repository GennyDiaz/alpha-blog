
class Article < ActiveRecord::Base
	#ensures the title and description are true with min and max limit
	validates :title, presence: true, length: { minimum: 3, maximum: 50 }
	validates :description, presence: true, length: { minimum: 10, maximum: 300 }  
end