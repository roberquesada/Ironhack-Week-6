class TournamentsController < ApplicationController
  
  def index
    respond_to do |format|
      format.html { render(:index) }
      format.json { render json: Tournament.all}
      format.xml { render xml: Tournament.all}
    end
  end

  def create
    tournament = Tournament.new(tournament_params)

    if tournament.save
      render json: tournament, status: :created
    else
      render status: 400, json: { errors: tournament.errors.full_message}
    end
  end

  def destroy
    tournament = Tournament.find_by(id: params[:id])

    if tournament
      tournament.destroy
      render status: 200, json: {id: params[:id]}
    else
      render status: 404, json: {error: 'ME CAGO EN TU PADRE'}
    end

  end

  private

  def tournament_params
    params.require(:tournament).permit(:name)
  end
end
