class BlogsController < ApplicationController
  def index
  end

  def show
  end
  
  def index
   @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end
  
  def create
    blog = Blog.new(blog_params)
  end

  def edit
  end
  
  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
