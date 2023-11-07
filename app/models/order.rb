class Order < ApplicationRecord
  validates :customer_id, presence: true
  validates :employee_id, presence: true
  validates :order_date, presence: true
  validtes :address_id, presence: true
  
  has_many :order_items, dependent: :destroy

  belongs_to :employee 
  belongs_to :customer
  belongs_to :address

  has_many :order_items

end
