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

  scope :company_id_like, ->(query) { where('id LIKE ?', "%#{query}%") }
  scope :company_name_like, ->(query) { where('company_name LIKE ?', "%#{query}%") }
  scope :company_id_or_company_name_like, -> (query) { company_id_like(query).or(company_name_like(query)) }

  def self.company_like(q)
    
    company_id_or_company_name_like(q)

    # words = q.split
    # if words.length > 1
    #   employees = first_name_like(words[0]) + last_name_like(words[1])
    # else
    #   employees = first_name_or_last_name_like(q)
    # end
    # 
    # employees.uniq

  end

end
