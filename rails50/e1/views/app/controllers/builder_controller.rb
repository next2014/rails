#---
# Excerpted from "Agile Web Development with Rails 5",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails5 for more book information.
#---
class BuilderController < ApplicationController
  
  def new
    @product = Product.new
  end
  
  def new_with_helper
    new
  end
  
  def save
    @product = Product.new(params[:product])
    if @product.save
      redirect_to :action => :index
    else
      render :action => :new
    end
  end
  
  def index
    render :inline => "You have <%= pluralize(Product.count, 'Product') %>"
  end
end
