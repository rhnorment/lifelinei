class ContactsController < ApplicationController

  def index
    @title = "Administer LifeLine Contacts"
    @contacts = Contact.paginate(:page => params[:page]).order('created_at DESC')
  end

  def show
    @contact = Contact.find(params[:id])
    @title = "Showing contact #{@contact.name}"
  end

  def new
    @title = "Contact Us"
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      ContactMailer.contact_confirmation(@contact).deliver
      ContactMailer.contact_message(@contact).deliver
      flash[:green] = "Your message was successfully sent to LifeLine!  Someone will be in touch with you shortly."
      redirect_to new_contact_path
    else
      flash.now[:red] = "There was a problem submitting your message.  Every field is required.  Please try again."
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    flash[:yellow] = "This contact has been removed from the system."
    redirect_to contacts_path
  end

end