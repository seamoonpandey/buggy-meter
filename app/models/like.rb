# frozen_string_literal: true

# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#  user_id    :integer          not null
#
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # validates :user_id, uniqueness: { scope: :post_id }, message: "Can only like once per post."
end
