class ShopsController < ApplicationController
  # GET /shops or /shops.json
  def index
    @shops = Shop.all
  end
end
