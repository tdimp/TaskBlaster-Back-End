class Task < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates :name, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true
end