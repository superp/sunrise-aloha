require 'rails'
require 'sunrise-aloha'

module Sunrise #:nodoc:
  module Aloha
    class Engine < ::Rails::Engine #:nodoc:
      initializer "sunrise_aloha.assets_precompile" do |app|
        app.config.assets.precompile += Sunrise::Aloha.assets
      end
    end
  end
end
