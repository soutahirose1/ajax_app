class PostsController < ApplicationController

  def index 
   @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
  end

  # checkedアクションは既読の操作を行った時に実行されるアクション
  def checked
    
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end

end


