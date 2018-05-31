module Api
  class ApiController < ApplicationController
    def index
      # routes = Rails.application.routes.routes.map do |route|
      #   {alias: route.name, path: route.path.spec.to_s, controller: route.defaults[:controller], action: route.defaults[:action]}
      # end
      # 
      # json_response(routes)
    end
  end
end
