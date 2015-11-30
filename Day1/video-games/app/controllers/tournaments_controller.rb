class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def render_json
    render json: Tournament.all
  end

  def create
    tournament = Tournament.new(tournament_params)

    if tournament.save
      render json: tournament, status: :created
    else
      render status: 400, json: { errors: tournament.errors.full_message}
    end
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name)
  end
end
