class Car < ApplicationRecord
  belongs_to :user

  validates :name, presence: true

  # TODO: csv parsing logic
  def pros_and_cons(name)
    if name == "Car1"
      pros_and_cons = ["Pros: flashy, fast, stylish", "Cons: expensive, polluting"]
    elsif name == "Car2"
      pros_and_cons = ["Pros: sturdy, steady", "Cons: expensive, slow"]
    elsif name == "Car3"
      pros_and_cons = ["Pros: fast, sportsy", "Cons: noisy"]
    end   
  end
  
end
