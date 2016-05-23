require 'spec_helper'
require_relative '../../../../apps/web/controllers/front/index'

describe Web::Controllers::Front::Index do
  let(:action) { Web::Controllers::Front::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
