class ProductsController < ApplicationController

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, :active)
    end
end