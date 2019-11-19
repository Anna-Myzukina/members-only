module SessionsHelper
  def sign_out
    current_user.update_attribute(:remember_token,
                                User.digest(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end
end