class ContactsController < InheritedResources::Base
	before_action :set_contact , only: [:show, :edit, :update, :destroy]
def index
	@contacts = Contact.all
end

def show
end

def new 
	@contact = Contact.new
end

def edit
end

def create
	@contact = Contact.new(contact_params)
	respond_to do  |format|
	if @contact.save
		ContactMailer.registration_confimation(current_user,@contact).deliver
		format.html{ redirect_to @contact, notice: 'Contact was successfully created.' }
		format.json{ render :show , status: :created, location: @contact }
	else
		format.html{ render :new }
		format.json{ render :json , @contact.errors, status: :unprocessable_entiry}
		end
	end 
end

  private

  def set_contact
      @contact = Contact.find(params[:id])
    end


    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
end

