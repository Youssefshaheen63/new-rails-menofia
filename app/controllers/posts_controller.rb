class PostsController < ApplicationController
  
  # GET /posts
  def index
    @posts = Post.all 
  end

  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
     @post = Post.new
  end 

  # Post /posts/commit
  def create 
    @post = Post.new(title: params[:post][:title], content: params[:post][:content])
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update 
    @post = Post.find(params[:id])
    if @post.update(title: params[:post][:title], content: params[:post][:content])
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy 
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
end
