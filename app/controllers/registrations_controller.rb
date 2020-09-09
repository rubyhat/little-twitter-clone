class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmations)
  end

  def acount_update_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmations, :current_password )
  end

  # Redirect after sign up to root page
  def after_sign_up_path_for(resource)
    '/'
  end

end