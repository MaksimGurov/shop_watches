class MainController < ApplicationController

  def index
    @brands = Brand.limit(3)
    @hits = Product.all.limit(8)
  end

end
