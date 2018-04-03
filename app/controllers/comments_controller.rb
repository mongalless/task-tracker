class CommentsController < ApplicationController
before_filter :configure_account_update_params

  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.create(comment_params)
    redirect_to task_path(@task)
  end
 
  def destroy
    @task = Task.find(params[:task_id])
    @comment = @task.comments.find(params[:id])
    @comment.destroy
    redirect_to task_path(@task)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:comment_text)
    end

  def configure_account_update_params
    devise_parameter_sanitizer.for(:comment) do |u|
    u.permit(:comment_text)
  end
end
