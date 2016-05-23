require 'spec_helper'
require_relative '../../../../apps/web/controllers/session/create'

describe Web::Controllers::Session::Create do
  let(:action) { Web::Controllers::Session::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
