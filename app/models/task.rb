class Task < ActiveRecord::Base
  belongs_to :categories
  belongs_to :users

  validates :name, presence: true
  validates :category, presence: true
end