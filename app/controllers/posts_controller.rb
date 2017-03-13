class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.last
    if @posts.empty?
      flash[:notice] = 'There are no posts here yet!'
    end
  end
end

