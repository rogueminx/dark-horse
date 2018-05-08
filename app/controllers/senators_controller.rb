require 'pry'

class SenatorsController < ApplicationController
  TOKEN = "secret"

  before_action :authenticate, except: [:index]

  def index
    @senators = Senator.all
    json_response(@senators)
  end

  def show
    @senator = Senator.find(params[:id])
    json_response(@senator)
  end

  def create
    @senator = Senator.create!(senator_params)
    json_response(@senator, :created)
  end

  def update
    @senator = Senator.find(params[:id])
    if @senator.update!(contact_params)
      render status: 204, json: {
      message: "Your senator has been updated successfully."
      }
    end
  end

  def destroy
    @senator = Senator.find(params[:id])
    if @senator.destroy
      render status: 200, json: {
      message: "Your senator has been deleted successfully."
      }
    end
  end

  private
    def senator_params
      params.permit(:firstname, :lastname, :state)
    end

    def contact_params
      params.permit(:contact_form, :address, :phone)
    end

    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        # Compare the tokens in a time-constant manner, to mitigate
        # timing attacks.
        ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
      end
    end
end
