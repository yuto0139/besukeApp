class HomeController < ApplicationController
  before_action :authenticate_customer!, only: :authentication
  def index; end 
  def authentication
    redirect_to "/users"
  end
end
