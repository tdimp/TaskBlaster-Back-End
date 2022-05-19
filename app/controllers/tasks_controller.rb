class TasksController < ApplicationController
  get '/tasks' do
    tasks = Task.all.order(:category_id)
    tasks.to_json
  end
end