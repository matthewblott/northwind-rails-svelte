class Product < ApplicationRecord
  before_save { self.product_code = product_code.upcase }
  validates :product_code, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 25 }
  validates :product_name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 250 }
  validates :standard_cost, presence: true
  validates :list_price, presence: true
  validates :discontinued, presence: true
end
