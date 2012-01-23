require 'rails'
require 'sunrise-aloha'

module SunriseAloha #:nodoc:
  class Engine < ::Rails::Engine #:nodoc:
    initializer "sunrise_aloha.assets_precompile" do |app|
      app.config.assets.precompile += SunriseAloha.assets
    end
  end
end
