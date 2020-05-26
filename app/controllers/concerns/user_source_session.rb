module UserSourceSession
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  protected

  def set_source
    session[:source] = params[:s] if params[:s]
  end
end
