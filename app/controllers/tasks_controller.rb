class TasksController < ApplicationController
  get '/tasks' do
    tasks = Task.all
    tasks.to_json
  end
end