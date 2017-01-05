class PagesController < ApplicationController
  def home
    @peintures = Peinture.all
  end
end
