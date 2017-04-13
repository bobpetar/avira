class WebcamsController < ApplicationController
  def new
    @webcam = Webcam.new
  end

  def create
    @webcam = Webcam.create(webcam_params)
    if @webcam.save
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      redirect_to root_path
    end
  end

  def show
    @webcam = Webcam.find(params[:id])
  end

  private

  def webcam_params
    params.require(:webcam).permit(:image1, :image2, :image3)
  end
end
