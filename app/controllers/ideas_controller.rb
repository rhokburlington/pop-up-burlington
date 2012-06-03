class IdeasController < ApplicationController

  def index
    @ideas = Idea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ideas }
    end
  end

  def show
    @idea = Idea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @idea }
    end
  end

  def new
    @idea = Idea.new

    respond_to do |format|
      format.html 
      format.json { render json: @idea }
    end
  end

  def create
    @idea = Idea.new(params[:idea])

    respond_to do |format|
      if @idea.save
        format.html { redirect_to root_url, notice: 'Thank you for submitting your idea. We will be in touch. Email Amy with any questions at Amy.Kirschner@gmail.com' }
        format.json { render json: @idea, status: :created, location: @idea }
      end
    end
  end

end
