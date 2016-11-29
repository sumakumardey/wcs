class QueryController < ApplicationController
  def index
    q = PatrolObservation.nlq(params[:text])
    render json: q.all
  end
end
