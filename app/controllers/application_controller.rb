class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_filter  :verify_authenticity_token

  helper_method :current_user, :logged_in?

  private

  def current_user
    return nil unless session_token
    @current_user ||= User.find_by_session_token(session_token)
  end

  def logged_in?
    !!current_user
  end

  def login(user)
    session[:session_token] = user.reset_session_token!
    @current_user = user
  end

  def logout
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def require_logged_in
    render json: {base: ['invalid credentials']}, status: 401 if !current_user
  end

  def session_token
    params[:session][:session_token]
  end
end
