class ShoppingCartsController < ApplicationController
  def index
    @shopping_carts = []
    ShoppingCart.all.each do |sc|
      if sc.user = current_user
        @shopping_carts.push(sc)
      end
    end
  end

  def create
    @shopping_cart = ShoppingCart.new
    @shopping_cart.user = current_user
    @shopping_cart.product = Product.find(params[:product_id])
    @shopping_cart.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    shopping_cart = ShoppingCart.find(params[:id])
    shopping_cart.destroy
    redirect_back(fallback_location: root_path)
  end
end
