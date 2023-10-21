class Application < ApplicationRecord
  has_many :pet_applications
  has_many :pets, through: :pet_applications

  validates :name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  # validates :zip_code, presence: true
  validates :description, presence: true
  validates :status, presence: true

  def address
    "#{self.street_address}, #{self.city}, #{self.state} #{self.zip_code}"
  end
end