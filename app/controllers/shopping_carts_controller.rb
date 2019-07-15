class ShoppingCartsController < ApplicationController
  def index
  end

  def create
    @shopping_cart = ShoppingCart.new
    @shopping_cart.user = current_user
    @shopping_cart.product = Product.find(params[:product_id])
    @shopping_cart.save
    respond_to do |format|
      format.json { head :no_content }
      format.js { }
    end
    # redirect_back(fallback_location: root_path)
  end

  def destroy
    @shopping_cart = ShoppingCart.find(params[:id])
    @shopping_cart.destroy
    respond_to do |format|
      format.json { head :no_content }
      format.js { }
    end
    # redirect_back(fallback_location: root_path)
  end
end
