class StatusController < ApplicationController
  def new
    @status = Status.new(:parent_id => params[:parent_id])
  end  
end