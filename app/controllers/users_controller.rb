class UsersController < ApplicationController
	before_action :authenticate_user!
	def show
	  @user = User.find(params[:id])
	  @post = Post.joins(:user)
	end
end