class Api::V1::SupervisorsController < ApplicationController
  def index

  end

  def get_all

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

  def get_projects

  end


end
