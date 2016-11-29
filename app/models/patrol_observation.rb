class PatrolObservation < ActiveRecord::Base
  self.table_name = 'patrol_observation_query'
  self.inheritance_column = nil

  def self.waypoints
    wp = PatrolObservation.select(:x,:y)
    data = wp.map do |po|
      {X:po.x,Y:po.y}
    end
    {data: data}
  end
end
