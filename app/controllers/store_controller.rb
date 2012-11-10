class StoreController < ApplicationController
  def increment_counter
  if session[:counter].nil?
    session[:counter] = 0
  end
  session[:counter] += 1
end
  def index
    increment_counter
    @products = Product.all
    @cart = current_cart
  end
end