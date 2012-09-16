class ServicesController < ApplicationController

  def main
    @title = "LifeLine Services"
  end

  def administration
    @title = "Program Administration"
  end

  def oversight
    @title = "Medical Oversight"
  end

  def training
    @title = "Certified Training"
  end

  def survey
    @title = "Training Feedback Form"
  end

  def faqs
    @title = "FAQs"
    @faqs = Faq.paginate(:page => params[:page], :per_page => 10).order('number ASC')
  end

  def financing
    @title = "Program Financing"
  end

  def laws
    @title = "Rules & Regulations"
  end

  def help
    @title = "LifeLine Help"
  end

end
