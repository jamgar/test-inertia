require 'active_support/concern'
# More info: https://pragmaticstudio.com/tutorials/rails-session-cookies-for-api-authentication

module Inertiable
  extend ActiveSupport::Concern

  included do
    before_action :set_csrf_cookie

    inertia_share errors: -> {
      session.delete(:errors) || []
    }

    inertia_share flash: -> {
      {
        success: flash.notice,
        alert: flash.alert
      }
    }
  end

  def redirect_to(options = {}, response_options = {})
    if (errors = response_options.delete(:errors))
      puts "=================== redirect_to errors ================="
      session[:errors] = errors
    end

    super(options, response_options)
  end
  

  private

  # def after_sign_out_path_for(_resource_or_scope)
  #   new_user_session_path
  # end

  def set_csrf_cookie
    cookies['XSRF-TOKEN'] = {
      value: form_authenticity_token,
      same_site: 'Strict'
    }
  end
  
end