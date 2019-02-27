class Api::MiniCapstoneController < ApplicationController
  def products
    render 'my_products.json.jbuilder'
  end
end
