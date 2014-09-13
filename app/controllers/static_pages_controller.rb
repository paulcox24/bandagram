class StaticPagesController < ApplicationController
  def home
    
  end

  def index

  end

  def pic_list
    @pics = current_user.pictures.all
  end

end
