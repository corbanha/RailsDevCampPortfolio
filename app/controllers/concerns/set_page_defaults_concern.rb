module SetPageDefaultsConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_defaults
  end

  protected

  def set_defaults
    @page_title = "Corban Anderson's Website"
    @seo_keywords = 'Corban Anderson portfolio projects c++ c java python ruby'
  end
end
