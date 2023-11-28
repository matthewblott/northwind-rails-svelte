class Address < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :address_line_1, presence: true, length: { maximum: 100 }
  validates :address_line_2, length: { maximum: 100 }
  validates :postal_town, presence: true, length: { maximum: 100 }
  validates :county, presence: true, length: { maximum: 100 }
  validates :country, presence: true, length: { maximum: 100 }
  validates :post_code, presence: true

  has_many :customer_addresses, dependent: :destroy
  has_many :employee_addresses, dependent: :destroy
  has_many :supplier_addresses, dependent: :destroy

end
