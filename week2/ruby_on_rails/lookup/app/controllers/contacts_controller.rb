class ContactsController < ApplicationController

  def all
    @contacts = Contact.all
  end

  def new_contact_form

  end

  def new_contact_confirm
    @contact = Contact.create(
      first_name: params[:input_first_name],
      last_name: params[:input_last_name],
      email: params[:input_email],
      phone_number: params[:input_phone_number]
      )
    redirect_to '/'
  end

end
