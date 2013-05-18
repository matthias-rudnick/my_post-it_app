class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def new
    @post=Post.new
  end

  def create
  	@post = Post.create(params[:post])
  	@post.user_id = 1 #To Do - Put in real user

  	if @post.save
      binding pry
  		flash[:notice] = "Post was successfully created."
  		redirect_to '/'
  	else #validation failure

  	end
  end

  def show 
  	@post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "You successfully updated your post."
      redirect_to "/posts/#{@post.id}"
    else #validation failure

    end

  end


end
