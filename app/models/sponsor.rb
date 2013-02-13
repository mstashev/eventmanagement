class Sponsor < ActiveRecord::Base
  attr_accessible :logo, :name, :url
  validates :name, :presence => true
  validates :logo, :presence => true
  validates :url, :presence => true

  has_and_belongs_to_many :meetings
  
  has_one :exhibitor
  has_many :contests
  def full_name
  	"#{name}"
  end

end