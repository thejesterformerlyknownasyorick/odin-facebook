class UsersController < ApplicationController

    def index
        @users = User.where(name: params[:id])
    end

    def show
        @user = User.find(params[:id])
        @posts = @user.posts.sort_by(&:"#{'created_at'}").reverse.uniq
        @post = Post.new
    end
    
end
