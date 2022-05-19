class TasksController < ApplicationController
  
  get '/tasks' do
    tasks = Task.all.order(:category_id)
    tasks.to_json
  end

  post '/tasks' do
    task = Task.new(params[:task])
    if task.save
      task.to_json
    else
      { errors: task.errors.full_messages }.to_json
    end
  end
end