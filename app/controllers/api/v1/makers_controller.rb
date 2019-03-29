class Api::V1::MakersController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Maker.all, adapter: :json
  end

  def show
    render json: Maker.find(params[:id]), adapter: :json
  end
end
