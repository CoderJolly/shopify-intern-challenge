# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  def purchase(product,quantity)
  	if product && product.inventory_count > 0 && product.inventory_count >= quantity
  		purchased_item = PurchasedItem.create(name: product.name,price: product.price,quantity: quantity,user: self)
  		product.inventory_count = product.inventory_count - quantity
  		product.save
  		return purchased_item
  	else
  		return nil
  	end
  end
end
