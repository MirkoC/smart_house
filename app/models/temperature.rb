class Temperature < ActiveRecord::Base
  belongs_to :room
  validates :value, :room_id, presence: true
end
