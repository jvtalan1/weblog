# class CommentsController < ApplicationController
#   def create
#     @post = Post.find(params[:post_id])
#     @comment = @post.comments.create(comment_params)
#     redirect_to post_path(@post)
#   end

#   private
#   def comment_params
#     params.require(:comment).permit(:commenter, :body)
#   end
# end

class CommentsController < ApplicationController
  
  def create
    event = Event.new(event_params)
    if event.save
      render json: event
    else
      render nothing: true, status: :bad_request
    end
  end

  private

  def event_params
    params.require(:event).permit(:commenter, :body)
  end

end