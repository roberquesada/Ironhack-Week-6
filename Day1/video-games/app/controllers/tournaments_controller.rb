class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def render_json
    render json: Tournament.all
  end
end
