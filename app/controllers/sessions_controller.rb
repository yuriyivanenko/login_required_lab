class SessionsController < ApplicationController
  def create
    session[:name] = params[:name] unless params[:name].blank?

    if current_user.blank? || current_user.nil?
      redirect_to "/login"
    end
  end

  def destroy
    session.delete :name
  end
end
