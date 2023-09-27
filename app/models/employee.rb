class Employee < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
  # important to enforce uniqueness at the database level as well as the model, add an index in this case
  validates :email, presence: true, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :avatar, presence: false, length: { maximum: 250 } 
  validates :job_title, presence: true, length: { maximum: 50 }
  validates :department, presence: true, length: { maximum: 50 }
  validates :manager_id, presence: false
  validates :phone, presence: true, length: { maximum: 25 }
  validates :address1, presence: true, length: { maximum: 150 }
  validates :address2, presence: false, length: { maximum: 150 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :state, presence: true, length: { maximum: 50 }
  validates :postal_code, presence: true, length: { maximum: 15 }
  validates :country, presence: true, length: { maximum: 50 }

  # has_many :statuses, :class_name => 'MembershipStatus', :foreign_key => [:user_id, :group_id]
  belongs_to :parent, :class_name => "Employee", :foreign_key => "manager_id", optional: true
  has_many :children, :class_name => "Employee", :foreign_key => "manager_id"
end
