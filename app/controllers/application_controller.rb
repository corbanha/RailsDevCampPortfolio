class ApplicationController < ActionController::Base
  include DeviseWhitelist

  before_action :set_source

  protected

  def set_source
    session[:source] = params[:s] if params[:s]
  end
end
