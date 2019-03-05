class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render 'show.json.jbuilder'
  end

  def create
    # make a new product in the database
    @product = Product.new(
        name: params[:name],
        price: params[:price],
        image_url: params[:image_url],
        description: params[:description]
      )
    @product.save
    render 'show.json.jbuilder'
  end

  def update
    #find product I want to update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    #actually update the product I want to update 
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.save
    render 'show.json.jbuilder'
    
  end

  def destroy
    product_id = params[:id]
    @product = Product.find_by(id: product_id)

    @product.destroy
    render 'destroy.json.jbuiilder'
  end
end
