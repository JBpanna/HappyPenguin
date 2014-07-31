class Waddle < ActiveRecord::Base
	validate :name, presence: true
end
