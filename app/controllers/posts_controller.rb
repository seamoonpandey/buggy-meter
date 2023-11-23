class PostsController < ApplicationController
    before_action :authenticate_user!
    def create
        Post.create(post_params)
        redirect_to root_path
    end
    def show
        @post = Post.find(params[:id])
    end
    def destroy
        @post = current_user.posts.find(params[:id])
        @post.destroy
        redirect_to user_path(current_user)
    end

    def like
        post = Post.find(params[:id])
        current_user.likes.create(post: post)
    
        redirect_back(fallback_location: root_path)
    end

    def unlike
        post = Post.find(params[:id])
        like = current_user.likes.find_by(post_id: post.id)
        like.destroy

        redirect_back(fallback_location: root_path)
    end
    
    private
    def post_params
    params.require(:post).permit(:description, :image, :user_id)
    end
end
