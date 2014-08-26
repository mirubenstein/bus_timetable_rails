class Line <ActiveRecord::Base
  has_many :stops
  has_many :stations, through: :stops
  validates :name, presence: true
end

# def station_data
#   names=[]
#   self.stations.each {|station| names << station.name}
#   permutated_names = names.permutation(2).to_a
#   nodes = names.map { |name| {id: name} }
#   edges = permutated_names.map {|name1, name2| {source: name1, target: name2}}
#   alchemy_data = {nodes: nodes, edges: edges}
# end
