module Api::V1
  class ApiController < ApplicationController
    
    # binding.pry
    skip_before_action :verify_authenticity_token
    # protect_from_forgery with: :null_session
  end
end