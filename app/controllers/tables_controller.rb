class TablesController < ApplicationController
  respond_to :html

  def index
    @teams = Team.get_sorted
  end

end