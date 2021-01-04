class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end
  def create
    @post = Post.new(create_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def create_params
    params.require(:post).permit(:title,:place,:content,:image)
  end
  
end
