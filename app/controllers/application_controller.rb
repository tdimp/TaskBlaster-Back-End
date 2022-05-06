class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/tasks' do
    tasks = Task.all
    tasks.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/categories' do
    categories = Category.all
    categories.to_json
  end

end
