class ApplicationController < ActionController::Base
  include Inertiable

    inertia_share auth: -> {
      {
        user: current_user.as_json(
          only: [ :id, :email ]
        )
      }
    }
end
