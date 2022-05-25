class CategoriesController < ApplicationController
  
  get '/categories' do
    categories = Category.all
    categories.to_json
  end

  get '/categories/:id' do
    category = Category.find(params[:id])
    category.to_json
  end

  patch '/categories/:id' do
    category = Category.find(params[:id])
    if category.update(params[:category])
    category.to_json
    else
      { errors: CategoriesController.errors.full_messages }
    end
  end

end