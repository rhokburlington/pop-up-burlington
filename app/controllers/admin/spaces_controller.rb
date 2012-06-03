class Admin::SpacesController < ApplicationController
   http_basic_authenticate_with :name => "popup", :password => "vh1video"

  # GET /admin/spaces
  # GET /admin/spaces.json
  def index
    @spaces = Space.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spaces }
    end
  end

  # GET /admin/spaces/1
  # GET /admin/spaces/1.json
  def show
    @space = Space.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @space }
    end
  end

  # GET /admin/spaces/new
  # GET /admin/spaces/new.json
  def new
    @space = Space.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @space }
    end
  end

  # GET /admin/spaces/1/edit
  def edit
    @space = Space.find(params[:id])
  end

  # POST /admin/spaces
  # POST /admin/spaces.json
  def create
    @space = Space.new(params[:space])

    respond_to do |format|
      if @space.save
        format.html { redirect_to admin_spaces_url, notice: 'Space was successfully created.' }
        format.json { render json: @space, status: :created, location: @space }
      else
        format.html { render action: "new" }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/spaces/1
  # PUT /admin/spaces/1.json
  def update
    @space = Space.find(params[:id])

    respond_to do |format|
      if @space.update_attributes(params[:space])
        format.html { redirect_to admin_spaces_url, notice: 'Space was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/spaces/1
  # DELETE /admin/spaces/1.json
  def destroy
    @space = Space.find(params[:id])
    @space.destroy

    respond_to do |format|
      format.html { redirect_to admin_spaces_url }
      format.json { head :no_content }
    end
  end
end
