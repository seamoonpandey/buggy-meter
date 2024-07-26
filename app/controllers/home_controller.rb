# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    if current_user
      priority_posts = Post.where(user: [current_user.followees, current_user]).order(created_at: :desc)
      other_posts = Post.where.not(user: [current_user, current_user.followees]).order(created_at: :desc)
      @posts = priority_posts + other_posts
    else
      @posts = Post.order(created_at: :desc)
    end
  end
end
