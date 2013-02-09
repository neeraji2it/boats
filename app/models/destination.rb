class Destination < ActiveRecord::Base
  # Validations
    validates_presence_of :name
    validates_uniqueness_of :name
    validates_presence_of :permalink
    validates_uniqueness_of :permalink

  # Callbacks
    before_validation :generate_permalink

  # Scopes
    scope :activated, where(:activated => 1)

  # Instance methods
    def to_param
    	self.permalink
    end
    
    def generate_permalink
      self.permalink = "#{self.name.parameterize}-#{Time.now.to_i}" if self.changes.include?(:name)
    end
end
