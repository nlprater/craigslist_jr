class Post < ActiveRecord::Base
  belongs_to :category
  validates :category_id, presence: true
  validates :title, presence: true
  validates :description, presence: true

end

