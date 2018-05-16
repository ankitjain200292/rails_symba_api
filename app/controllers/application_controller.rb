class ApplicationController < ActionController::API

  before_action :check_api_token

  private

  def set_time_zone
    Time.zone = 'UTC'
  end

  def check_api_token
    if request.headers["X-Parse-REST-API-Key"].nil? || ROOTERY["rootery"]["api_token"] != request.headers["X-Parse-REST-API-Key"]
      render json: {
          error: "invalid_api_key",
          status: 403
      }, status: 403
    end
  end
end
