namespace :wcs do
  task :convert_observations => :environment do
    PatrolObservationQuery.all.each do |poq|
      po = PatrolObservation.new
      po.patrol_id = poq['Patrol ID']

      puts po.attributes
    end
  end
end
