class PostsController < ApplicationController

  def home
    # @users = User.all
    # @user = current_user
    # @post = Post.new
    @posts = Post.all
  end

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.all
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    # byebug
    if @post.save
      flash[:notice] = "Post created successfully"
      redirect_to user_posts_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @user = current_user
    @post = @user.posts.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post updated successfully"
      redirect_to user_posts_path(@user)
    else
      redirect_to :edit
    end
  end


  def destroy
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    if @post.destroy
      flash[:notice] = "Post destroyed successfully"
      redirect_to user_posts_path(@user)
    else
      redirect_to post_path(@post)
    end
  end



private
  def post_params
    params.require(:post).permit(:description, :avatar)
  end

end
