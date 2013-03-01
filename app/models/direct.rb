class Direct < ActiveRecord::Base
  validates_presence_of :message, :username
  attr_accessible :message, :username
end
