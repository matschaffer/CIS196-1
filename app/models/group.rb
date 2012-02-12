class Group < ActiveRecord::Base
	has_many :users, :through => :groupings
end
