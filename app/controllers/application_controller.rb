class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_webcam
    if params[:webcam].present?
      cookies[:webcam] = params[:webcam]
    end

    if cookies[:webcam].present?
      @current_webcam = cookies[:webcam]
    end
  end

  def set_webcam
    @current_webcam
  end

  helper_method :set_webcam
end
