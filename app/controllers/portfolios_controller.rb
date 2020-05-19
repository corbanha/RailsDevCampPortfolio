class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def create

  end

end
