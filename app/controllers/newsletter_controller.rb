class NewsletterController < ApplicationController
  def index
  end

  def new
    @newsletter = Newsletter.new
  end

  def update
    @user = User.find session[:user_id]
    
  end
end
