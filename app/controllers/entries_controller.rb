class EntriesController < ApplicationController
  before_action :set_blog, only: [:index, :new, :create]
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  def index
    @entries = @blog.entries.all
  end

  def show; end

  def new
    @entry = @blog.entries.build
  end

  def edit; end

  def create
    @entry = @blog.entries.build(entry_params)

    if @entry.save
      redirect_to [@blog, @entry], notice: 'Entry was successfully created.'
    else
      render :new
    end
  end

  def update
    if @entry.update(entry_params)
      redirect_to [@blog, @entry], notice: 'Entry was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @entry.destroy
    redirect_to blog_entries_url, notice: 'Entry was successfully destroyed.'
  end

  private
  def set_blog
    @blog = Blog.find(params[:blog_id])
  end

  def set_entry
    set_blog
    @entry = @blog.entries.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:title, :body, :blog_id)
  end
end
