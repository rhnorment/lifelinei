class ProductsController < ApplicationController

  def main
    @title = "Our Products"
  end

  def aeds
    @aeds = Aed.all
    @title = "AEDs"
  end

  def accessories
    @title = "AED Accessories"
  end

  def customer_reviews
    @title = "Customer Reviews"
  end

  def professional_reviews
    @title = "Professional Reviews"
  end

end
