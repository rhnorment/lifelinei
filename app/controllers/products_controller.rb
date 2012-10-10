class ProductsController < ApplicationController

  def main
    @title = "Product Solutions"
  end

  def aeds
    @title = "Automated External Defibrillators"
  end

  def accessories
    @title = "AED Accessories"
  end

  def comparison
    @title = "AED Comparison"
  end

  def registration
    @title = "AED Registration"
  end

end
