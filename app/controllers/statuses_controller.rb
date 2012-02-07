class StatusesController < ApplicationController
  def new
    @status = Status.new(:parent_id => params[:parent_id])
    @service = current_user.services.find(params[:service_id])
  end  
  
  def create
    puts params
    puts "1111111WE ARE IN CREATE"
    @service = current_user.services.find(params[:service_id])
    @status = Status.new(params[:status])
    @status.service_id = @service.id
    if @status.save
      flash[:notice] = "New status created."
    else
      flash[:error] = "Error creating new status."
    end
    puts "1111111WE ARE IN CREATE 2"

    redirect_to service_path(@service)
    #redirect_to service_path(current_user.services.find(params[:service_id]).id)
    
  end
  
  def show
    puts "1111111WE ARE IN SHOW"
    redirect_to service_path(@service)
    
  end
  
  def edit
    @service = current_user.services.find(params[:service_id])
    @status = @service.statuses.find_by_id(params[:id])
  end  

  def update
    puts params
    
    @service = current_user.services.find(params[:service_id])
    @status = @service.statuses.find_by_id(params[:id])
    if @status.update_attributes(params[:status])
      flash[:notice] = @status.message + " status updated."
    else
      flash[:error] = "Error updating " + @status.message + " status."
    end
    redirect_to service_path(@service)
  end

end