class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def index
  end

  def open
    @project_name = params[:project_name].capitalize
    render 'index'
  end
  
end
