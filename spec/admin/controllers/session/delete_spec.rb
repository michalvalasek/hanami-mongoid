require 'spec_helper'
require_relative '../../../../apps/admin/controllers/session/delete'

describe Admin::Controllers::Session::Delete do
  let(:action) { Admin::Controllers::Session::Delete.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
