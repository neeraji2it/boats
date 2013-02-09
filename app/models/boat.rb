class Boat < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :permalink
  validates_uniqueness_of :permalink

  before_validation :generate_permalink

  def to_param
  	self.permalink
  end
  
  def generate_permalink
    self.permalink = "#{self.name.parameterize}-#{Time.now.to_i}" if self.changes.include?(:name)
  end
end
