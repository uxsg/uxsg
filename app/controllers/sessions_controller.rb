class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(session_params[:email], session_params[:password])
      redirect_back_or_to root_url, success: "Welcome to UXSG!"
    else
      @user = User.new(email: session_params[:email])
      flash[:error] = "Incorrect email or password."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to root_url, flash: { success: "See you again soon!" }
  end

  private

  def session_params
    params.require(:user).permit(:email, :password)
  end
end
