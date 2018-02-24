class EflashssdsController < ApplicationController
	before_action :set_eflashssd, only: [:show, :edit, :update, :destroy ]

  def index
     if params[:search]
         @eflashssds = Eflashssd.where('pccitem LIKE ? OR receivedate LIKE ? OR startdate LIKE ? OR
          finishdate LIKE ? OR qual LIKE ? OR solution LIKE ? OR capacity LIKE ?',
           "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", 
           "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
      else

  	@eflashssds = Eflashssd.all
    respond_to do |format|
            format.html 
            format.json 
            format.csv { send_data @eflashssds.to_csv }
            format.xls { send_data @eflashssds.to_csv } 
                end  

      #@eflashssds = Eflashssd.paginate(page:params[:page], per_page: 30 )
        
       end 
  end



  def new
  	@eflashssd = Eflashssd.new
  end

  def show
  	respond_to do |format|
            format.html 
            format.json 
            format.pdf  { render template: 'eflashssds/report' , pdf: 'Report', layout: 'pdf.html', location: @handy } 
            end 
  end


  def edit
  end

def create
    @eflashssd = Eflashssd.new(eflashssd_params)
      @eflashssd.user = current_user
      if @eflashssd.save
        redirect_to @eflashssd
      else
        render 'new'    
      end
  end

def update
      if @eflashssd.update(eflashssd_params)
        render 'show' 
      else
        render 'edit'
      end
    
  end

  
  def destroy
    @eflashssd.destroy
       redirect_to eflashssds_url 
      
   end

def import   
  Eflashssd.import(params[:file])
  redirect_to eflashssds_url, notice: "Eflashssds imported."
end

private 
  	def set_eflashssd
      @eflashssd = Eflashssd.find(params[:id])
    end

	

def eflashssd_params
	params.require(:eflashssd).permit(:pccitem, :receivedate, :startdate, :finishdate,:solution, :capacity, 
		:qual, :owner, :prodname, :prodpn, :desc, :fwvversion, :ftype, :pcbvers, :testres , :expl, :rpname, 
		:rpdate, :approvename, :remark, :pc1os  ,:pc1mb  ,:pc1vendor ,:pc1chip  ,:pc1bios  ,:pc1interface ,
        :pc1basic  ,:pc1comp32  ,:pc1burnin  ,:pc1wboot  ,:pc1cboot  ,:pc1fat  ,:pc1fat32  ,:pc1ntfs ,
        :pc1exfat  ,:pc1result  ,:pc1led  ,:pc1inos1  ,:pc1inos2  , :pc1inos3 , :pc1inos4  ,:pc1inos5, 
        :pc2os ,:pc2mb ,:pc2vendor ,:pc2chip ,:pc2bios ,:pc2interface ,:pc2basic ,:pc2result ,:pc2led ,
        :pc2inos1  ,:pc2inos2  ,:pc2inos3  ,:pc2inos4  ,:pc2inos5  ,:pc2inos6  ,:pc2inos7  ,:pc2inos8 ,
        :pc3os  ,:pc3mb  ,:pc3vendor  ,:pc3chip  ,:pc3bios  ,:pc3interface,
		:pc4os  ,:pc4mb  ,:pc4vendor  ,:pc4chip  ,:pc4bios  ,:pc4interface,
		:image1, :image2, :image3, :qty, :coldbootfail, :qtreport , :plandate, :status)
end


end
