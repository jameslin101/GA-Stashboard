class ServicesController < ApplicationController

  def show
    @service = current_user.services.find(params[:id])
  end
  def new
    @service = current_user.services.new
  end

#  def status
#  end

end
