class HomeController < ApplicationController
  def top
  end

  def import
    Tests.import(params[:file])
    redirect_to "/home"
  end

end
