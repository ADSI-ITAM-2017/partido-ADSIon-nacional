class Usuario < ApplicationRecord
	has_and_belongs_to_many :propiedads
	has_many :propiedads
end
