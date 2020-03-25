class Helpers

  def current_user(session)
    @current_user ||= User.find(session[:user_id]) if
    session[:user_id].present?

  end

  def is_logged_in?
    !!current_user
  end
end
