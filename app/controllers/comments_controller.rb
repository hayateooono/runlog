class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to log_path(@comment.log)
    else
      @log = @comment.log
      @comments = @log.comments
      render "logs/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id,log_id: params[:log_id])
  end

end
