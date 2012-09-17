class GamersController < ApplicationController
  # GET /gamers
  # GET /gamers.json
  def index
    @gamers = Gamer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gamers }
    end
  end

  # GET /gamers/1
  # GET /gamers/1.json
  def show
    @gamer = Gamer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gamer }
    end
  end

  # GET /gamers/new
  # GET /gamers/new.json
  def new
    @gamer = Gamer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gamer }
    end
  end

  # GET /gamers/1/edit
  def edit
    @gamer = Gamer.find(params[:id])
  end

  # POST /gamers
  # POST /gamers.json
  def create
    @gamer = Gamer.new(params[:gamer])

    respond_to do |format|
      if @gamer.save
        format.html { redirect_to @gamer, notice: 'Gamer was successfully created.' }
        format.json { render json: @gamer, status: :created, location: @gamer }
      else
        format.html { render action: "new" }
        format.json { render json: @gamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gamers/1
  # PUT /gamers/1.json
  def update
    @gamer = Gamer.find(params[:id])

    respond_to do |format|
      if @gamer.update_attributes(params[:gamer])
        format.html { redirect_to @gamer, notice: 'Gamer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamers/1
  # DELETE /gamers/1.json
  def destroy
    @gamer = Gamer.find(params[:id])
    @gamer.destroy

    respond_to do |format|
      format.html { redirect_to gamers_url }
      format.json { head :no_content }
    end
  end
end
