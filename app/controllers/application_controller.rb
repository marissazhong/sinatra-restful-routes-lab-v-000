class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do #show index
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/new' do #displays create recipe form
    erb :new
  end

  post '/recipes' do #creates a recipe
    @recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
    puts params
    redirect to '/recipes>'
  end

  get '/recipes/:id' do #displays one recipe
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end

  get '/recipes/:id/edit' do #displays edit recipe form
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end

  patch '/recipes/:id/edit' do #edits recipe
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.name = params[:name]
    @recipe.ingredients = params[:ingredients]
    @recipe.cook_time = params[:cook_time]
    @recipe.save
    erb :show
  end

  delete '/recipes/:id/delete' do #deletes recipe
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.delete
    erb :deleted
  end

end
