require 'bundler/setup'
Bundler.setup

require 'paymob' # and any other gems you need

RSpec.configure do |config|
  # some (optional) config here
  config.formatter = :documentation
  config.order = :random
  config.profile_examples = 10
end