class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def index
    @product = Product.all
  end

  def create
    @product = Product.create(product_params)
    @product.save

    redirect_to @product
  end

  def show
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
