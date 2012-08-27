class ContactsController < ApplicationController

  layout 'contact_us'

  def new
    @title = "Contact Us"
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      ContactMailer.contact_confirmation(@contact).deliver
      ContactMailer.contact_message(@contact).deliver
      flash.now[:green] = "Your message was successfully sent to LifeLine!  Someone will be in touch with you shortly."
      render  :new
    else
      flash.now[:red] = "There was a problem submitting your message.  Every field is required.  Please try again."
      render :new
    end
  end


end
