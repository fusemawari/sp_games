class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
  end

  def create
    Post.create(name: post_params[:name], title: post_params[:title], text: post_params[:text], image: post_params[:image])
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.permit(:name, :title, :text, :image)
  end

end
