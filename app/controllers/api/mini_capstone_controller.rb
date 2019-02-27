class Api::MiniCapstoneController < ApplicationController
  def products
    @product = Product.all
    render 'my_products.json.jbuilder'
  end
end
