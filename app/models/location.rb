class Location < ActiveRecord::Base
  has_many :nodes, through: :location_nodes
  has_many :location_nodes, dependent: :destroy
end
