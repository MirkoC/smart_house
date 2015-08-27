class Room < ActiveRecord::Base
  belongs_to :house
  has_many :temperatures, dependent: :destroy
  has_many :doors, dependent: :destroy
  validates :name, presence: true
end
