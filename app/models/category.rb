class Category < ApplicationRecord
  has_many :users, through: :users_categories
end
