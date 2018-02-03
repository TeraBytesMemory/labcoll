class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  include Devise::Controllers::Rememberable

  def facebook
    auth = request.env['omniauth.auth']
    user = User.find_for_oauth(auth)

    remember_me(user)

    sign_in_and_redirect user, event: :authentication
  end

  def failure
    redirect_to root_path
  end
end
