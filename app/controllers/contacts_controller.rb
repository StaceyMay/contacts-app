class ContactsController < ApplicationController

  def home
    @contacts = Contact.all
  end

  def new
  end

  def save
    @contact = Contact.new(name: params[:name], number: params[:number], address: params[:address])

    @contact.save
  end
end
