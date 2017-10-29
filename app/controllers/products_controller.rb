class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new

    @bali = Location.find_by(island: "Bali").id
    @sumatra = Location.find_by(island: "Sumatra").id
    @lombok = Location.find_by(island: "Lombok").id

    @surfboards = Category.find_by(name: "Surfboards").id
    @bodyboards = Category.find_by(name: "Bodyboards").id
    @skateboards = Category.find_by(name: "Skateboards").id
    @swimfins = Category.find_by(name: "Swimfins").id
    @fins = Category.find_by(name: "Fins").id
    @leashes = Category.find_by(name: "Leashes").id
    @tailpads = Category.find_by(name: "Tailpads").id
    @boardbags = Category.find_by(name: "Boardbags").id
    @clothing = Category.find_by(name: "Clothing").id
    @wetsuits = Category.find_by(name: "Wetsuits").id
    @cameras = Category.find_by(name: "Cameras").id
    @others = Category.find_by(name: "Others").id
  end

  def create
    @product = current_user.products.build(product_params)

    if @product.save
      redirect_to @product, notice: "Product Added"
    else
      render :new, notice: "Try Again"
    end

  end

  private

  def product_params
    params.require(:product).permit(:location_id,:category_id,:name,:price)
  end
end
