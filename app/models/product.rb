class Product < ApplicationRecord
	scope :available, -> () { where("inventory_count > 0")}
end
