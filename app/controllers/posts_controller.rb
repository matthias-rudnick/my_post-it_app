class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def create
  	@post = Post.create(params[:post])
  	@post.user_id = 1 #To Do - Put in real user

  	if @post.save
  		flash[:notice] = "Post was successfully created."
  		redirect_to '/'
  	else

  	end
  end

  def show 
  	@post = Post.find(params[:id])
  end


end
