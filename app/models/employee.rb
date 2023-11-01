class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :first_name, presence: false
  validates :last_name, presence: false

  # validates :first_name, presence: true, length: { minimum: 2, maximum: 50 }
  # validates :last_name, presence: true, length: { minimum: 2, maximum: 50 }
  # validates :title, presence: true, length: { minimum: 2, maximum: 50 }
  # validates :title_of_courtesy, presence: true, length: { minimum: 2, maximum: 50 }
  # validates :birth_date, presence: true, date: { after: 18.years.ago, before: 65.years.ago }
  # validates :hire_date, presence: true, date: { after: 1.month.ago }
  # validates :address1, presence: true, length: { minimum: 2, maximum: 150 }
  # validates :address2, presence: true, length: { minimum: 2, maximum: 150 }
  # validates :city, presence: true, length: { minimum: 2, maximum: 50 }
  # validates :region, presence: true, length: { minimum: 2, maximum: 50 }
  # validates :postal_code, presence: true, length: { minimum: 2, maximum: 15 }
  # validates :country, presence: true, length: { minimum: 2, maximum: 50 }
  # validates :home_phone, presence: true, length: { minimum: 2, maximum: 25 }
  # validates :extension, presence: true, length: { minimum: 2, maximum: 3 }

  scope :filter_by_name, -> (search) { where('first_name LIKE ? or last_name LIKE ?', "%#{search}%", "%#{search}%") }

end
