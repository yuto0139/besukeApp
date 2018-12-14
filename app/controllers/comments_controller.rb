class CommentsController < ApplicationController
  before_action :set_entry, only: [:create]
  before_action :set_comment, only: [:destroy, :approve]

  def create
    @comment = @entry.comments.build(comment_params)

    if @comment.save
      redirect_to [@blog, @entry], notice: 'Comment was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @comment.destroy
    redirect_to [@blog, @entry], notice: 'Comment was successfully destroyed.'
  end

  def approve
    @comment.update(status: 'approved')
    redirect_to [@blog, @entry], notice: 'Comment was successfully approved.'
  end

  private
  def set_entry
    @entry = Entry.find(params[:entry_id])
    @blog = Blog.find(@entry.blog_id)
  end

  def set_comment
    set_entry
    @comment = @entry.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body, :status, :entry_id)
  end
end
