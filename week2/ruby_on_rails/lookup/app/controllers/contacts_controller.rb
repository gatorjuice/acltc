class ContactsController < ApplicationController

  def all
    @contacts = Contact.all
  end

end
