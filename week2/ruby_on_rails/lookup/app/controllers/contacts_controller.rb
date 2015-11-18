class ContactsController < ApplicationController

  def index
    @contacts = Contact.order(:last_name, :first_name)
    @grouped_contacts = @contacts.group_by {|k, v| k.last_name[0] }
    p @grouped_contacts
  end

  def new
  end

  def create
    @contact = Contact.create(
      first_name: params[:input_first_name],
      last_name: params[:input_last_name],
      email: params[:input_email],
      phone_number: params[:input_phone_number]
      )
    flash[:success] = "Successfully Added"
    redirect_to '/contacts'
  end

  def show
    @contact = Contact.find_by(id: params[:id])

  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:input_first_name],
      last_name: params[:input_last_name],
      email: params[:input_email],
      phone_number: params[:input_phone_number]
      )
    flash[:info] = "Successfully Updated"
    redirect_to '/contacts'
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    flash[:warning] = "Contact Deleted"
    redirect_to '/contacts'
  end

end
