class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:phone_number],
      params[:user][:password])

    if @user
      login(@user)
      render json: @user
    else
      # TODO: after iOS frontend linked, switch to:
      # render json: ["Invalid Username or Password"], status: 401
      flash.now[:errors] = @user.errors.full_messagse
    end
  end

  def destroy
    @user = User.find_by_session_token(session_token)
    logout if @user
    render json: {status: "logged_out"}
  end
end
