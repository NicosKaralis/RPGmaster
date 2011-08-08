class PagesController < ApplicationController
  
  def home
    flash.now[:notice] = "Welcome home"
  end
  
  def about
    @title = "About"
  end
  
  def help
    @title = "Help"
  end

end
