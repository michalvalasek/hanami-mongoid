require 'spec_helper'
require_relative '../../../../apps/admin/views/session/delete'

describe Admin::Views::Session::Delete do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/admin/templates/session/delete.html.erb') }
  let(:view)      { Admin::Views::Session::Delete.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
