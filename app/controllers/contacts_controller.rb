class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to new_contact_path, notice: 'Contact was successfully submitted.' }
        ContactMailer.contact_received(@contact).deliver
      else
        format.html { render action: 'new' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :subject, :phone, :email, :message)
    end
end
