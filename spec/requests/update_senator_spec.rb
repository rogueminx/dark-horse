require 'rails_helper'

describe "put senators/:id", :type => :request do

  before do
    post '/senators', params: { :firstname => 'test senator', :state => '123 West Oak' }
    @id = JSON.parse(response.body)['id']
    put "/senators/#{@id}", params: { id: @id, senator: { :contact_form => 'WASHINGTON' } }
  end

  

  it 'returns status code 204' do
    expect(response).to have_http_status(204)
  end


end
