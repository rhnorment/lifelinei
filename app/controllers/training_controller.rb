class TrainingController < ApplicationController

  def main
    @title = "Training Solutions"
  end

  def certified
    @title = "Certified Training"
  end

end
