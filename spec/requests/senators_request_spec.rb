require 'rails_helper'
require 'factories'

describe "get all senators route", :type => :request do
  let!(:senators) { FactoryBot.create_list(:senator, 20)}

  before { get '/senators'}

  it 'returns all senators' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
