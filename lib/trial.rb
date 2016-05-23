# load Mongoid
Mongoid.load!(File.join(__dir__, "../config/mongoid.yml"), ENV["HANAMI_ENV"])

# require all models
Dir["#{__dir__}/models/*.rb"].each { |file| require_relative file }
