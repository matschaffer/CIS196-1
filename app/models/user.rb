class User < ActiveRecord::Base
	has_many :groups, :through => :groupings
	has_many :events, :through => :user_events
end
