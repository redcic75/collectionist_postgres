class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @current_wday = Time.now.utc.wday
    @week_openings = @shop.week_openings(@current_wday)
  end
end
