class ApplicationController < ActionController::Base
  include Inertiable

  def after_sign_in_path_for(resource_or_scope)
    root_path
  end

  inertia_share auth: -> {
    {
      user: current_user.as_json(
        only: [ :id, :email ]
      )
    }
  }
end
