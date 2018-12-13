class CommentsController < ApplicationController
  before_action :set_entry, only: [:new, :create]
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def show; end

  def new
    @comment = @entry.comments.build
  end

  def edit; end

  def create
    @comment = @entry.comments.build(comment_params)

    if @comment.save
      redirect_to [@blog, @entry, @comment], notice: 'Comment was successfully created.'
    else
      render :new
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to [@blog, @entry, @comment], notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to [@blog, @entry], notice: 'Comment was successfully destroyed.'
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
