class WaypointsController < ApplicationController
  def index
    render json: PatrolObservation.waypoints
  end
end
