class Supplier < ApplicationRecord
  validates :company_name, presence: true
  validates :contact_name, presence: true
  validates :contact_title, presence: true
end
