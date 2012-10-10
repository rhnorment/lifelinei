class ServicesController < ApplicationController

  def main
    @title = "Implementation"
  end

  def administration
    @title = "Program Administration"
  end

  def oversight
    @title = "Medical Oversight"
  end

  def monitor
    @title = "Compliance Monitor"
  end

  def faqs
    @title = "FAQs"
    @faqs = Faq.paginate(:page => params[:page], :per_page => 10).order('number ASC')
  end

end
