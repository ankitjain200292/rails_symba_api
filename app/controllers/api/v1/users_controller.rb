class Api::V1::UsersController < ApplicationController

  def login

  end

  def logout
    render json: true
  end


end
