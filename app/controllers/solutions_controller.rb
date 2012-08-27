class SolutionsController < ApplicationController

  def main
    @title = "Our Solutions"
  end

  def businesses
    @title = "Business Solutions"
  end

  def schools
    @title = "Scholastic Solutions"
  end

  def churches
    @title = "Church Solutions"
  end

  def dentists
    @title = "Dental Office Solutions"
  end

  def fire
    @title = "Fire Department Solutions"
  end

  def police
    @title = "Police Department Solutions"
  end

  def individuals
    @title = "Individual Solutions"
  end

end
