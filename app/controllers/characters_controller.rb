class CharactersController < ApplicationController
  def index
    @characters = Character.includes(:char_class, :race).all
    @races = Race.all
    @classes = CharClass.all
  end

  def show
    @characters_single = Character.find(params[:id])
  end
end
