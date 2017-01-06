class PagesController < ApplicationController
  def home
    @peintures = Peinture.all.order(created_at: :desc)
  end
end
