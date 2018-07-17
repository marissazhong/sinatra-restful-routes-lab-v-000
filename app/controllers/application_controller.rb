class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do #show index
    erb :index
  end

  get '/recipes/new' do #displays create recipe form

  end

  post '/recipes' do #creates a recipe

  end

  get '/posts/:id' do #displays one recipe

  end

end
