class Users::SessionsController < Devise::SessionsController
  def new
    render inertia: 'Auth/Login', props: {}
  end

  def create
   self.resource = warden.authenticate!(auth_options)
   set_flash_message!(:notice, :signed_in)
   sign_in(resource_name, resource)
   redirect_to root_path, turbolinks: false
  end
  

  def destroy
   signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
   set_flash_message! :notice, :signed_out if signed_out
   redirect_to root_path, turbolinks: false
  end
end