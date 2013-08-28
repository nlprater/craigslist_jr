get '/' do
  categories = Category.all
  @category_names = names(categories)
  erb :index
end

get '/category/:name' do
  @category = params[:name]
  cat_object = Category.where(:name => @category).first
  @posts = Post.where(:category_id => cat_object.id)
  erb :category
end

# get '/post/:id' do
#   @post = params[:id]
#   cat_object = Post.where(:name => @category).first
#   @posts = Post.where(:category_id => cat_object.id)
#   erb :post
# end

post '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  # Look in app/views/index.erb
  erb :index
end
