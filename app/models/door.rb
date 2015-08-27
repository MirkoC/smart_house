class Door < ActiveRecord::Base
  belongs_to :room
  validates :value, presence: true
end
