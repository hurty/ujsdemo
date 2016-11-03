class User < ApplicationRecord
	validates_presence_of :first_name, :last_name
	validates_numericality_of :phone
end
