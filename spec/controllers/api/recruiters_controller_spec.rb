require 'rails_helper'

RSpec.describe Api::RecruitersController, :type => :request do

  describe 'Test reqests' do
    
    it "Get index" do


      p Rails.env
      p ActiveRecord::Base.connection_config
      
      
      get api_recruiters_path
      
      assert_response :success
      response_json = JSON.parse(response.body)

      assert_equal "", response_json
    end
    
  end
end
