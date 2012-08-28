class ContactMailer < ActionMailer::Base

  default :from => "support@lifelinei.com"

  def contact_confirmation(contact)
    @contact = contact
    mail(:to => "#{contact.name} <#{contact.email}>", :subject => "Contact Confirmation")
  end

  def contact_message(contact)
    @contact = contact
    mail(:to => "support@lifelinei.com", :subject => "New Inquiry From Website")
  end

end
