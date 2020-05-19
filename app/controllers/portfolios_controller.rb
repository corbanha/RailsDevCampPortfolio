class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, success: "Your portfolio was created!" }
      else
        format.html { render :new, danger: "There was an error creating your portfolio" }
      end
    end
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Your portfolio was created!' }
        format.json { render portfolios_path, status: :ok, location: portfolios_path }
      else
        format.html { render :edit, danger: 'There was an error updating your portfolio' }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :thumbnail, :main_image)
  end
end
