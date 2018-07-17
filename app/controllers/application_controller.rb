class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do #show index
    erb :index
  end

  get '/recipes/new' do #displays create recipe form

  end

  post '/recipes' do #creates a recipe

  end

  get '/recipes/:id' do #displays one recipe

  end

  get '/recipes/:id/edit' do #displays edit recipe form

  end

  patch '/recipes/:id/edit' do #edits recipe

  end

  delete '/posts/:id/delete' do #deletes recipe

  end

end
