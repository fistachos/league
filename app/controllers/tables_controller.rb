class TablesController < ApplicationController
  def index
    @teams = Team.get_sorted
  end
end