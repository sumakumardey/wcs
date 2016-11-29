class CreatePatrolObservations < ActiveRecord::Migration
  def change
    create_table :patrol_observations do |t|
      t.string  :patrol_id
      t.string  :patrol_type
      t.date    :start_date
      t.date    :end_date
      t.string  :station
      t.string  :team
      t.string  :objective
      t.string  :mandate
      t.boolean :armed
      t.integer :leg_id
      t.datetime :waypoint_time
      t.decimal  :lat
      t.decimal  :lon
      t.string   :category0
      t.string   :category1
      t.string   :category2
      t.string   :category3
      t.string   :names
      t.string   :id_numbers
      t.string   :people_observed
      t.integer  :person_age
      t.string   :place_of_origin
      t.string   :threat
      t.string   :sex
      t.string   :species

      t.timestamps null: false
    end
  end
end
