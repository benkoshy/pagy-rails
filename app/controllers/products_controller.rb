class ProductsController < ApplicationController  

  # GET /products or /products.json
  def index
    @pagy, @products = pagy(Product.all)    
  end
  
end
