class Exhibitor < ActiveRecord::Base
  attr_accessible :description, :exhibitorcategory_id, :name, :sponsor_id
  validates :name, :presence => true
  validates :description, :presence => true
  validates :exhibitorcategory_id, :presence => true

  belongs_to :exhibitorcategory
  belongs_to :sponsor
  has_many :meetings, :through => :sponsor

end
