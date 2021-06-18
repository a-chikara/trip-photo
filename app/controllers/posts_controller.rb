class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :root
  end

  def search
    @posts = Post.search(params[:keyword])
  end



  private

  def post_params
    params.require(:post).permit(:city_id, :explain, :image)
  end
  
end