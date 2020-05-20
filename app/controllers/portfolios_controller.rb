class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[show edit update destroy]

  def index
    @portfolios = Portfolio.all.order(title: :asc, subtitle: :asc)
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
  end

  # post request
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
  end

  # patch request
  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_url, success: 'Your portfolio was created!' }
        format.json { render portfolios_path, status: :ok, location: portfolios_path }
      else
        format.html { render :edit, danger: 'There was an error updating your portfolio' }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # delete request
  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, success: 'Your portfolio was successfully deleted' }
      format.json { head :no_content }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :thumbnail, :main_image)
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
