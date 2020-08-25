class PostsController < ApplicationController
  def index
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  # 削除
  # def new
  # end

  def create
    @posts = Post.all.order(id: "DESC")
    redirect_to action: :index
  end  
end
