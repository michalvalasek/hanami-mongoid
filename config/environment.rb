require 'rubygems'
require 'bundler/setup'
require 'hanami/setup'
require_relative '../lib/trial'
require_relative '../apps/web/application'
require_relative '../apps/admin/application'

Hanami::Container.configure do
  mount Admin::Application, at: '/admin'
  mount Web::Application, at: '/'
end
