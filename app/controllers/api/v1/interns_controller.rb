class Api::V1::InternsController < ApplicationController

  def index

  end

  def show
    @slug = params[:id]
  end

  def create
    render json: true
  end

  def update
    render json: true
  end

  def destroy
  render json: true
  end

end
