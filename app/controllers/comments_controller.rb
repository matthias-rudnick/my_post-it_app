class CommentsController < ApplicationController

	def create
		@comment = Comment.create(comment_text:params[:comment][:comment_text],user_id:1,post_id:params[:post_id])
  	if @comment.save
  		flash[:notice] = "Comment was successfully created."
  		redirect_to post_path(params[:post_id])
  	else #validation failure

  	end

	end

end