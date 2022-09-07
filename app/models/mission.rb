class Mission < ApplicationRecord
  belongs_to :scientist 
  belongs_to :planet

  # must have a scientist and a planet
  # covered by belongs to association

  validates :name, presence: true
  validates :scientist, uniqueness: true 

end
