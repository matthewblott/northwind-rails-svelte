class ApplicationController < ActionController::Base
  use_inertia_instance_props
  before_action -> {
    InertiaRails.configure do |config|
      config.default_render = true
    end
  }
end
