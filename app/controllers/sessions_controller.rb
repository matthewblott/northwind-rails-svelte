class SessionsController < Devise::SessionsController
  use_inertia_instance_props
  before_action -> {
    InertiaRails.configure do |config|
      config.default_render = true
    end
  }

  def new
    redirect_to :controller => '/login', :action => 'index'
  end

end
