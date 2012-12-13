class PostsController < ApplicationController
before_filter :authenticate_user!

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])

    @comments = @post.comments #Funciona pq tem no model
    @comment = Comment.new #form precisa do Model vazio
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    @post.user = current_user #depois de relacionar
      if @post.save
      redirect_to posts_path
      else
      render action: "new"
      end
  end

  # PUT /posts/1
  def update
    @post = Post.find(params[:id])

      if @post.update_attributes(params[:post])
        redirect_to @post
      else
        render action: "edit"
      end
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end
end
