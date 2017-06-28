class LocationNode < ActiveRecord::Base
  belongs_to :location
  belongs_to :node
end
