# frozen_string_literal: true

class Employees::SessionsController < Devise::SessionsController
  use_inertia_instance_props
  # before_action :configure_sign_in_params, only: [:create]
  # skip_before_action :verify_authenticity_token
  before_action -> {
    InertiaRails.configure do |config|
      config.default_render = true
    end
  }

  # GET /employees/sign_in
  # def new
  #   render inertia: 'devise/sessions/new'
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
