class AddressController < ApplicationController


  def index
    @contact = Contact.find(params[:contact_id])
    @address = Address.all
  end

  def show
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address.find(params[:id])
  end

  def new
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address.new
  end

  def edit
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address.find(params[:id])
  end

  def create(contacts_params)
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address(contacts_params)

    if @contact.save
      redirect_to contact_address_path @contact, @address
    else
      render :new
    end

  end

  private

   def contacts_params
     params.require(:contact).permit(:first_name, :last_name, :email, :phone, :password)
   end
end
