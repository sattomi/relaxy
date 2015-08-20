class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    callback_from :facebook
  end

  private

  def callback_from(provider)
    provider = provider.to_s

    @user = User.find_for_oauth(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      if @user.registered?
        sign_in_and_redirect @user, event: :authentication
      else
        redirect_to "/users/#{@user.id}/begin_registration"
     end
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end

  def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user == @user
  end
end