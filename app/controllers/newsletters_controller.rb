class NewslettersController < ApplicationController
  before_action :require_login, only: [:update, :edit]
  before_action :set_newsletter, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @newsletters = Newsletter.all
  end

  def new
    @newsletter = Newsletter.new
  end

  def show
  end

  def create
    ni = NewsletterItem.new(repo_language: params[:repo_language], period: params[:period])
    newsletter = Newsletter.new(title: params[:title], user_id: params[:user_id])
    newsletter.newsletter_items << ni
    u = User.find(current_user.id)
    newsletter.save
    u.newsletters << newsletter
    u.save 
    flash[:message] = "Newsletter #{params[:title]} was succesfully created"
    redirect_to root_url
  end

  def destroy
  end

  def update
  end

  def edit
  end

  private
  def require_login
    unless session[:user_id]
      flash[:info] = "Please Sign In."
      redirect_to login_url
    end
  end

  def set_newsletter
    @newsletter = Newsletter.find(params[:id])
  end

  def newsletter_params
    params.require(:newsletter).permit(:title, :user_id)
  end
end

