class Propiedad < ApplicationRecord
	has_and_belongs_to_many :usuarios
	belongs_to :usuario

end
