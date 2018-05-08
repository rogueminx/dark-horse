

class SenatorsController < ApplicationController

  def index
    @json = JSON.parse(File.read(Rails.root + 'app/controllers/senators.json'))
    @senators = {"senator": "Bernie"}
    json_response(@json)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
