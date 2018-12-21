class HomeController < ApplicationController
  def index
    @products = Product.all
  end

  def hello
    @name = params[:name]
  end

  def about
    redirect_to blog_index_path
  end

  def contact_us
    render :prices
  end

  def prices
    redirect_to "https://google.com"
  end
end