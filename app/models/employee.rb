class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
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

  scope :first_name_like, ->(query) { where('first_name LIKE ?', "%#{query}%") }
  scope :last_name_like, ->(query) { where('last_name LIKE ?', "%#{query}%") }
  scope :first_name_or_last_name_like, ->(query) { first_name_like(query).or(last_name_like(query)) }  

  def self.name_like(q)
    
    words = q.split

    if words.length > 1
      employees = first_name_like(words[0]) + last_name_like(words[1])
    else
      employees = first_name_or_last_name_like(q)
    end
    
    employees.uniq

  end

end
