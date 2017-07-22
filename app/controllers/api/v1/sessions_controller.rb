class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:phone_number],
      params[:user][:password])

    if @user
      login(@user)
      # TODO: redirect_to v1_quotes_url or profile ... ?
      render json: @user
    else
      # TODO: after iOS frontend linked, switch to:
      # render json: ["Invalid Username or Password"], status: 401
      flash.now[:errors] = @user.errors.full_messagse
    end
  end

  def destroy
    @user = current_user
    if @user
      logout
      # TODO: redirect_to new_v1_user_url
      render json: {status: "logged_out"}
    else
      flash.now[:errors] = @user.errors.full_messagse
      # TODO: after iOS frontend linked, switch to:
      # render json: ["No user logged in"], status: 404
    end
  end
end
