class ContactsController < ApplicationController

  def index
    @contacts = Contact.order(:last_name)
  end

  def new
    
  end

  def create
    Contact.create(
      first_name: params[:first_name].capitalize,
      last_name: params[:last_name].capitalize,
      company: params[:company],
      cell_phone: params[:cell_phone],
      home_phone: params[:home_phone],
      email: params[:email],
      birthday: params[:birthday],
      website: params[:website],
      photo: params[:photo]
      )
    flash[:message] = "Contact Successfully Added"
    redirect_to '/contacts'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    Contact.find_by(id: params[:id]).update(
      first_name: params[:first_name].capitalize,
      last_name: params[:last_name].capitalize,
      company: params[:company],
      cell_phone: params[:cell_phone],
      home_phone: params[:home_phone],
      email: params[:email],
      birthday: params[:birthday],
      website: params[:website],
      photo: params[:photo]
      )
    flash[:info] = "Contact Successfully Updated"
    redirect_to '/contacts'
  end

  def destroy
    Contact.find_by(id: params[:id]).destroy
    flash[:warning] = "Contact Deleted"
    redirect_to "/contacts"
  end

end
