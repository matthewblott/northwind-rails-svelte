class OrderDetail < ApplicationRecord
  # self.primary_keys = :order_id, :product_id
  belongs_to :order
  belongs_to :product
  validates :quantity, presence: true
  validates :discount, presence: true
  validates :created_at, presence: true
  validates :updated_at, presence: true
  # has_many :statuses, :class_name => 'MembershipStatus', :foreign_key => [:user_id, :group_id]
end
