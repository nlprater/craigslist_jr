class Category < ActiveRecord::Base
  has_many :posts
  validates :name, presence: true
end

def names(objects)
  name_array = []
  objects.each { |obj| name_array << obj.name }  
  name_array
end

