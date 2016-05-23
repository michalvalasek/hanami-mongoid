require 'spec_helper'
require_relative '../../../../apps/web/views/front/index'

describe Web::Views::Front::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/front/index.html.erb') }
  let(:view)      { Web::Views::Front::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
