class PagesController < ApplicationController
  def home
   @title ="home"
  end

  def contact
   @title ="contact"  
  end
   
  def about
    @title="About"
  end
  def help
  end
end
