class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def map_direction
    @monuments = Monument.all
  end
end
