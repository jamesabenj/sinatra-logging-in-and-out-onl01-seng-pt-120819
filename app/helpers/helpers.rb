class Helpers

  def self.current_user(session)
    @current_user ||= User.find(session[:user_id]) if
    session[:user_id].present?
    @current_user
    binding.pry
  end

  def self.is_logged_in?
    !!current_user
  end
end
