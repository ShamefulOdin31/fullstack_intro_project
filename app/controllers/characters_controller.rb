class CharactersController < ApplicationController
  def index
    @characters = Character.includes(:char_class, :race).all
    @races = Race.all
    @classes = CharClass.all
  end

  def show
    @characters_single = Character.find(params[:id])
  end

  def search

  end
  def search_results
    @results = Character.where('name LIKE ?', "%#{params[:keywords]}%")
  end
end
