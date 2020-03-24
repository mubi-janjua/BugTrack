class CommentsController < ApplicationController
def index
@bug = Bug.find(params[:bug_id])
@project =  Projectt.find(params[:projectt_id])
@comments = @bug.comments
end
def new
@comment = Comment.new
end
def create
@project = Projectt.find(params[:projectt_id])
@bug = Bug.find(params[:bug_id])
@comment = Comment.new(comment_params)
@comment.projectt_id = params[:projectt_id]
@comment.bug_id = params[:bug_id]

if @comment.save
  redirect_to  user_projectt_bug_comments_path
else
  render :new
end
end
def destroy
@project = Projectt.find(params[:projectt_id])
@bug = Bug.find(params[:bug_id])
@comment = Comment.find(params[:id])

@comment.destroy
redirect_to  user_projectt_bug_comments_path
end
private
def comment_params
params.require(:comment).permit(:text,:projectt_id, :bug_id)
end
end
