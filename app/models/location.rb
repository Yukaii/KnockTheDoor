class Location < ActiveRecord::Base
  belongs_to :workspace
  belongs_to :user

  acts_as_mappable :default_units => :kms,
                   :default_formula => :sphere,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude
end
