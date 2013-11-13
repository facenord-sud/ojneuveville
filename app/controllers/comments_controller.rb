class CommentsController<ApplicationController

  def create
    model = Event.find params[:id]
    model.comments.create(title: params[:comment][:title], comment: params[:comment][:comment], user_id: current_user.id)
    redirect_to model
  end
end