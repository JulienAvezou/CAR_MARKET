class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def first_name=(s)
    write_attribute(:first_name, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end

  def last_name=(s)
    write_attribute(:last_name, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end
end
