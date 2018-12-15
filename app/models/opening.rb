class Opening < ApplicationRecord
  
  validates :name, presence: true, length: { maximum:20 }
  validates :image_url, presence: true, length: { maximum:50 }
  
  has_many :tags
  has_many :tag_maps
  has_many :castlings
  has_many :opening_castlings
  has_many:relational_castlings, through: :opening_castlings, source: :castling
  
  def associate_castling(other_castling)
    self.opening_castlings.new(castling_id: other_castling.id)
  end

end
