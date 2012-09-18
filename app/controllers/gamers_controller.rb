class GamersController < ApplicationController
  respond_to :html

  def index
    @gamers = Gamer.all
  end

  def show
    @gamer = Gamer.find(params[:id])
  end

  def new
    @gamer = Gamer.new
  end

  def edit
    @gamer = Gamer.find(params[:id])
  end

  def create
    @gamer = Gamer.new(params[:gamer])
    if @gamer.save
      redirect_to @gamer, notice: 'Gamer was successfully created.'
    else
      render :new
    end
  end

  def update
    @gamer = Gamer.find(params[:id])
    if @gamer.update_attributes(params[:gamer])
      redirect_to @gamer, notice: 'Gamer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @gamer = Gamer.find(params[:id])
    @gamer.destroy
  end
end
