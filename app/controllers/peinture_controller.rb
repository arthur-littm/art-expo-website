class PeintureController < ApplicationController
  def index
    @peintures = Peinture.all
  end

  def show
    @peinture = Peinture.find(params[:id])
  end

  def create
  end

  def new
    @peinture = Peinture.new
  end

  def update
  end

  private

  def peinture_params
  end
end
