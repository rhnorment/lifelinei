class AboutUsController < ApplicationController

  def main
    @title = "About Us"
  end

  def mission
    @title = "Our Mission"
  end

  def testimonials
    @title = "Client Testimonials"
  end

  def partners
    @title = "Our Partners"
  end

end
