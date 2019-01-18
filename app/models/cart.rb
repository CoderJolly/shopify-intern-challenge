class Cart < ApplicationRecord
	has_many :cart_items, :dependent => :delete_all
end
