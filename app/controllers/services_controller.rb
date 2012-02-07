class ServicesController < ApplicationController

  def show
    @service = current_user.services.find(params[:id])
  end
  
  def new
    @service = current_user.services.new
  end
  
  def create
    puts params
    
    @service = Service.new(params[:service])
    @service.user_id = current_user.id
    if @service.save
      flash[:notice] = "New service created."
    else
      flash[:error] = "Error creating new service."
    end
    redirect_to services_path
  end
  
  def edit
    @service = current_user.services.find(params[:id])
  end
  
  def update
    puts params
    
    @service = current_user.services.find(params[:id])
    #@service.user_id = current_user.id
    if @service.update_attributes(params[:service])
      flash[:notice] = @service.name + " service updated."
    else
      flash[:error] = "Error updating " + @service.name + " service."
    end
    redirect_to services_path
  end  
end
