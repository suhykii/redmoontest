class HomeController < ApplicationController
  def index
  end

  def create
    @post = Post.new
    @post.db_title = params[:title]
    @post.db_content = params[:content]
    @post.image = params[:image]
    
    @post.save
    
    redirect_to '/contact_us.html.erb'
  end

  def write
  end  
  
  def contact_us
    @posts = Post.all
  end
end
