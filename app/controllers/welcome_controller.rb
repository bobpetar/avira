class WelcomeController < ApplicationController
  def index
    if params[:webcam].present?
      @webcam = Webcam.find(params[:webcam])
    end
  end
end
