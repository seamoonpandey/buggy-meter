class Like < ApplicationRecord
    belongs_to :user
    belongs_to :post

    # validates :user_id, uniqueness: { scope: :post_id }, message: "Can only like once per post."
end
