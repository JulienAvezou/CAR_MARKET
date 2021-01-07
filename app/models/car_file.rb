class CarFile < ApplicationRecord
  
  validates :name, presence: true, uniqueness: true
  validates :pros, presence: true
  validates :cons, presence: true

end
