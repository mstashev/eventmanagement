class Meeting < ActiveRecord::Base
  attr_accessible :venue_id, :end_date, :name, :start_date, :sponsor_ids
  validates :name, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true

  belongs_to :venue
  has_and_belongs_to_many :sponsors
  has_many :exhibitors, :through => :sponsors
end
