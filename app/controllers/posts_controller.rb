class PostsController < ApplicationController

  before_filter :find_post, :only => [:edit, :update, :show, :destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    if @post.save
      redirect_to posts_path
    else
      render :new
    end  
  end

  def show
  end

  def edit
  end

  def update
    if @post.update_attributes(params[:post])
      redirect_to @post, :notice => 'Post updated successfully!!'
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path, :notice => 'Post deleted successfully!!'
    else
      redirect_to posts_path, :notice => 'Post cannot be deleted!!'
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end
end

