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

  def self.nlq(text)
    uri = URI('http://prod.kapj8mps5e.us-east-1.elasticbeanstalk.com/parse')
    uri.query = URI.encode_www_form(text: text)
    res = Net::HTTP.get_response(uri)
    j = JSON.parse(res.body)

    q = PatrolObservation
    j.each do |phrase|
      puts phrase['type']
      case phrase['type']
      when 'animal'
        exp = "%#{phrase['value']}%"
        q = q.where('species like ?',exp)
      when 'person'
        q = q.where(leader: phrase['value'])
      end
    end

    q
  end
end
