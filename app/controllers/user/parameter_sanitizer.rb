class User::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:first_name , :last_name , :email , :password , :password_confirmation , :photo )
  end
end