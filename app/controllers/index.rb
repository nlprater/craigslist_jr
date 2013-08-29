# GET ===================

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

get '/posts/new' do
  erb :posts_new
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :post
end

# POST ===================

post '/posts/new' do
  @post = Post.create(params)
  redirect to('/')
end
