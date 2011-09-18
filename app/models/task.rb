class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActsAsList::Mongoid 

  field :name
  field :context
  field :state
  field :number, :type => Integer

  validates_presence_of :name

  def self.contexts
    %w(now later someday)
  end
end
