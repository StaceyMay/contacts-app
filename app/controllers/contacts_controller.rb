class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
  end

  def create
    @contact = Contact.new(name: params[:name], middle_name: params[:middle_name], number: params[:number], address: params[:address], bio: params[:bio])
    @contact.save
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.assign_attributes(name: params[:name], middle_name: params[:middle_name], number: params[:number], address: params[:address], bio: params[:bio])
    @contact.save

    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy

    redirect_to "/contacts"
  end
end
