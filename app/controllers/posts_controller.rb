class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      respond_to do |format|
        format.html { redirect_to user_path(current_user), notice: 'Your post has been added '}
        format.js
      end
    else
    render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])
    authorize @post
    if @post.update(post_params)
      redirect_to @post
    else
     render 'edit'
    end
  end

  private
  def post_params
    params.require(:post).permit(:content).merge(:user_id => current_user.id)
  end

end
