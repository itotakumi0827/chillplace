class CommentsController < ApplicationController
before_action :authenticate_user!
def create
  @place = Place.find(params[:search_id])
  @comment = @place.comments.new(comment_params)
  @comment.user_id = current_user.id
   if @comment.save
     redirect_back(fallback_location: root_path)
   else
     redirect_back(fallback_location: root_path)
   end
end
private
 def comment_params
   params.require(:comment).permit(:costper,:chill,:beautiful,:place_id,:body)
 end
end
