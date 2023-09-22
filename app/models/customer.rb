class Customer < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50 }
  validates :phone, presence: true, length: { maximum: 25 }
  validates :address1, presence: true, length: { maximum: 150 }
  validates :address2, presence: false, length: { maximum: 150 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :state, presence: true, length: { maximum: 50 }
  validates :postal_code, presence: true, length: { maximum: 15 }
  validates :country, presence: true, length: { maximum: 50 }
end
