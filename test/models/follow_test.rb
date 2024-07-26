# frozen_string_literal: true

# == Schema Information
#
# Table name: follows
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  followee_id :integer
#  follower_id :integer
#
require 'test_helper'

class FollowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
