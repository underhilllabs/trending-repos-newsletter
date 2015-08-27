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
end

