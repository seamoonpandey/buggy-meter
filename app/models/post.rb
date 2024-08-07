# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  has_many :post_hash_tags
  has_many :hash_tags, through: :post_hash_tags
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validate :image_presence

  after_commit :create_hash_tags, on: :create

  private

  def image_presence
    errors.add(:image, "can't be blank") unless image.attached?
  end

  def create_hash_tags
    extract_name_hash_tags.each do |name|
      hash_tags.create(name: name)
    end
  end

  def extract_name_hash_tags
    description.to_s.scan(/#\w+/).map { |name| name.gsub('#', '') }
  end
end
