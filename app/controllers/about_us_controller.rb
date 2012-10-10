class AboutUsController < ApplicationController

  def main
    @title = "About Us"
  end

  def mission
    @title = "Our Mission"
  end

  def partners
    @title = "Our Partners"
  end

  def help
    @title = "LifeLine Help"
  end

end
