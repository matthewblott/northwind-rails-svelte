class Order < ApplicationRecord
  validates :customer_id, presence: true
  validates :employee_id, presence: true
  validates :order_date, presence: true
  validates :shipped_date, presence: true
  validates :ship_name, presence: true
  validates :ship_address1, presence: true
  validates :ship_city, presence: true
  validates :ship_state, presence: true
  validates :ship_postal_code, presence: true
  validates :ship_country, presence: true
  validates :shipping_fee, presence: true
  validates :payment_type, presence: true
  validates :paid_date, presence: true
  validates :order_status, presence: true
end
