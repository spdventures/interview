class ApplicationController < ActionController::Base
  def json_response(data, status = :ok, message = "")
    render json: { data: data, status: status, message: message }
  end
end
