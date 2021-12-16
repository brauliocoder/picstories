class Story < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"

  def is_author? (current_user)
    user == current_user
  end
end
