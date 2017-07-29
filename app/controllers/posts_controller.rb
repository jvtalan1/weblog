class PostsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  before_action :find_post, only: [:show]

  def index
    @posts = Post.order("created_at desc").limit(10)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :category_id, :author_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
