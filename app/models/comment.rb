class Comment < ApplicationRecord
         belongs_to :user
         belongs_to :my_recipe
         validates :user_id, :my_recipe_id, presence: true
end
