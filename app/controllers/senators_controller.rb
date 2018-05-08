require 'pry'

class SenatorsController < ApplicationController

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

end
