class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :follow, :unfollow, :followers, :following]
    
    def show
        @posts = @user.posts.order(created_at: :desc)
    end
    def edit
    end

    def update
        current_user.update(user_params)
        redirect_to current_user
    end

    def follow
        current_user.followees << @user
        redirect_back(fallback_location: user_path(@user))
    end
    
    def unfollow
        current_user.followed_users.find_by(followee_id: @user.id).destroy
        redirect_back(fallback_location: user_path(@user))
    end

    def followers
        @followers = @user.followers
    end

    def following
        @followees = @user.followees
    end

    private
    def user_params
    params.require(:user).permit(:username, :name, :website,
                                :bio, :email, :phone, :gender, :avatar)
    end
    def find_user
        @user = User.find(params[:id])
    end
end
