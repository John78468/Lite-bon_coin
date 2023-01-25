class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    @user = current_user
    @product.user_id = @user.id
    @product.save
    redirect_to products_path(@products)
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def my_message
    @messages = current_user.products.all
  end

  def recept
    @product = Product.find(params[:id])
  end


  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :user_id)
  end
end
