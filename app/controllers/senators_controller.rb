require 'pry'

class SenatorsController < ApplicationController

  def index
    response = JSON.parse(File.read(Rails.root + 'app/controllers/senators.json'))
    @arr = []

    response['objects'].each do |object|
      @arr.push(object['person']['firstname'])
    end

    @senators = {"senator": "Bernie"}
    json_response(response)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
