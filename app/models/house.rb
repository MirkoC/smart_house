class House < ActiveRecord::Base
  has_many :rooms, dependent: :destroy
  validates :name, :street_address, :city, :country, :postal_code, :owner, presence: true
end
