require 'rails_helper'

describe "post a senator route", :type => :request do

  before do
    post '/senators', params: { :firstname => 'test senator', :state => '123 West Oak' }
  end

  it 'returns the senator name' do
    expect(JSON.parse(response.body)['firstname']).to eq('test senator')
  end

  it 'returns the senator contact form' do
    expect(JSON.parse(response.body)['state']).to eq('123 West Oak')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end
