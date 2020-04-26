class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
    render 'show'
  end
  def new
    @post = Post.new
    render 'new'
  end
  def edit
     Post@post = Post.find(params[:id])
    render 'edit'
  end
  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
  
end
