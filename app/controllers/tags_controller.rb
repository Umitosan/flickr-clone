class TagsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
  end

  def create
    @post = Post.find(params[:post_id])
    @user = User.find(@post.user_id)
    @tag = @post.tags.new(tag_params)
    if @tag.save
      flash[:notice] = 'Tag created successfully'
      redirect_to user_post_path(@user,@post)
    else
      flash[:notice] = 'Tag creation failed'
    end
  end

private

  def tag_params
    params.require(:tag).permit(:label)
  end

end
