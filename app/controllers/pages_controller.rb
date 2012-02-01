class PagesController < ApplicationController

  def show
    @service = current_user.services.find(params[:id])
  end
#  def home
#    @user 
#  end

#  def status
#  end

end
