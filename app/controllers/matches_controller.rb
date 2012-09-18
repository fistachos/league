class MatchesController < ApplicationController
  respond_to :html

  before_filter :require_login, :only => [:new, :create]

  def index
    @matches = Match.ordered
  end

  def new
    @match = Match.new
    @teams = Team.all
  end

  def edit
    @match = Match.find(params[:id])
  end

  def create
    @match = Match.new(params[:match])
    if @match.save
      redirect_to @match, notice: 'Match was successfully created.'
    else
      @teams = Team.all
      render :new
    end
  end

  def update
    @match = Match.find(params[:id])
    if @match.update_attributes(params[:match])
      redirect_to @match, notice: 'Match was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
  end
end
