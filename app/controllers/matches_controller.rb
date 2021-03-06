class MatchesController < ApplicationController

  def index
    @matches = Match.where(:published => true)
    @ideas = Idea.where(:published => true)
    @spaces = Space.where(:published => true)
    @idea = Idea.new
    @space = Space.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @matches }
    end
  end

  def show
    @match = Match.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @match }
    end
  end
end
