class PagesController < ApplicationController
  def home
    @latest_blogs = Blog.limit(5).order(created_at: :desc, title: :asc).published
  end

  def about
  end

  def contact
  end
end
