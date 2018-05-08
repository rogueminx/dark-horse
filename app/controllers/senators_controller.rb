

class SenatorsController < ApplicationController

  def index
    # query = params[:query]

    # if query
      @senators = {"senator": "Bernie"}
      json_response(@senators)
    # end
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
