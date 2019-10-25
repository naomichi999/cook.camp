class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
 def after_sign_in_path_for(resource)
 	if current_user
 	    users_path
 	else
 		admin_admin_users_path
    end
 end
 def after_sign_out_path_for(resource)
 	root_path
 end
  protected
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:sei_kanji, :mei_kanji, :sei_kana, :mei_kana, :nickname])
 end
end
