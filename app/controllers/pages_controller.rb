class PagesController < ApplicationController
  def home
    @products = Product.all
    @locations = Location.all
    @categories = Category.all
  end
end
