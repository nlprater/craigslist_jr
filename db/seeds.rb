require 'faker'
require_relative '../app/models/post.rb'
require_relative '../app/models/category.rb'

Category.create!(:name => "Autos")
Category.create!(:name => "Classifieds")
Category.create!(:name => "Apartments")

50.times do
  Post.create!(:title => Faker::Lorem.words(2..6).join(" "),
               :description => Faker::Lorem.paragraph(2),
               :price => rand(100).to_s,
               :category_id => rand(3)+1,
               :edit_key => Faker::Lorem.characters(9)
    )
end
