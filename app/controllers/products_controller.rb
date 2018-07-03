class ProductsController < ApplicationController
  def new; end

  def index
    @product = Product.all
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :price))
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
