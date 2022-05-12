class Task < ActiveRecord::Base
  belongs_to :categories
  belongs_to :users

  validates :name, presence: true
  validates :category_id, presence: true
end