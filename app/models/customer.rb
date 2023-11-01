class Customer < ApplicationRecord
  validates :id, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 25 }
  validates :company_name, presence: true, length: { maximum: 50 }
  validates :contact_name, presence: true, length: { maximum: 50 }
  validates :contact_title, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :region, presence: true, length: { maximum: 50 }
  validates :postal_code, presence: true, length: { maximum: 50 }
  validates :country, presence: true, length: { maximum: 50 }
  validates :phone, presence: true, length: { maximum: 50 }
  validates :fax, presence: true, length: { maximum: 50 }
end
