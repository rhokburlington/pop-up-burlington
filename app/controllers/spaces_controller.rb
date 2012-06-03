class SpacesController < ApplicationController

  def index
    @spaces = Space.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spaces }
    end
  end

  def show
    @space = Space.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @space }
    end
  end

  def new
    @space = Space.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @space }
    end
  end

  def create
    @space = Space.new(params[:space])

    respond_to do |format|
      if @space.save
        format.html { redirect_to root_url, notice: 'Thank you for submitting your space. We will be in touch. Email Amy with any questions at Amy.Kirschner@gmail.com' }
        format.json { render json: @space, status: :created, location: @space }
      end
    end
  end
end
