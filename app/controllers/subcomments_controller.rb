class SubcommentsController < ApplicationController

  def create
    @subtask = Subtask.find(params[:subtask_id])
    @subcomment = @subtask.subcomments.create(subcomment_params)
    redirect_to subtask_path(@subtask)
  end
 
  def destroy
    @subtask = Subtask.find(params[:subtask_id])
    @subcomment = @subtask.subcomments.find(params[:id])
    @subcomment.destroy
    redirect_to subtask_path(@subtask)
  end
 
  private
    def subcomment_params
      params.require(:subcomment).permit(:subcomment_text)
    end
end
