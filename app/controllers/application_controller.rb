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
    @recipe = Recipe.create(params)
    redirect to '/recipes'
  end

  get '/recipes/:id' do #displays one recipe

  end

  get '/recipes/:id/edit' do #displays edit recipe form

  end

  patch '/recipes/:id/edit' do #edits recipe

  end

  delete '/recipes/:id/delete' do #deletes recipe
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.delete
    erb :deleted
  end

end
