class AdminController < ApplicationController
  def index
    @ideas = Idea.all
    @spaces = Space.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ideas }
    end
  end
end
