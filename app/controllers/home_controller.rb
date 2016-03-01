class HomeController < ApplicationController
  def home
    redirect_to home_path unless current_user
  end

  def index
  end
end
