class ClassesController < ApplicationController
  def index
    @all_classes = CharClass.all
  end

  def show
    @char_classes = Character.where("char_class_id = ?", params[:id])
  end
end
