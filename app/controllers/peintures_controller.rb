class PeinturesController < ApplicationController
  def index
    @peintures = Peinture.all
  end

  def show
    @peinture = Peinture.find(params[:id])
  end

  def create
    @peinture = Peinture.new(peinture_params)
    if @peinture.save
      redirect_to peinture_path(@peinture)
    else
      render :new
    end
  end

  def new
    @peinture = Peinture.new
  end

  def update
    @peinture = Peinture.find(params[:id])
    if @peinture.update(peinture_params)
      redirect_to peinture_path(@peinture)
    else
      render :edit
    end
  end

  def destroy
    @peinture = Peinture.find(params[:id])
    @peinture.destroy
  end

  private

  def peinture_params
    params.require(:peinture).permit(:titre, :description, :photo)
  end
end
