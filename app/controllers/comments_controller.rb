class CommentsController < ApplicationController
  def create
    @comment = Comment.create({body: params[:body]})
    @comment.user_id = @current_user.id

    @comment.save

    if @comment.persisted?
      idea = Idea.find params[:idea_id].to_i
      idea.comments << @comment
      idea.save

      redirect_to idea_path(idea)
      #^^Make sure to change path
    end
  end

  def new

  end

  def destroy

  end

  private
  def comment_params
    params.require(:comments).permit(:body)
  end
end
