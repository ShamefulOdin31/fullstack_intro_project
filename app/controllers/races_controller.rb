class RacesController < ApplicationController
  def index
    @races = Race.all
  end

  def show
    @characters = Character.where("race_id = ?", params[:id])
  end
end
