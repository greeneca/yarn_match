class Yarn
  include Mongoid::Document
  field :brand, type: String
  field :name, type: String
  field :cyc_weight, type: Integer
  field :name_weight, type: String
  field :ply_weight, type: Integer
  field :wpi_weight, type: Integer
  field :knit_weight, type: Integer

  #before_validation :calculate_weights

  validate :name_weight_inclusion

  #def calculate_weights
    
  #end
  
  def name_weight_inclusion
    errors.add(:name_weight) unless Yarn.name_weights.include?(name_weight)
  end

  def self.name_weights
    ['Thread', 'Cobweb', 'Lace', 'Light Fingering', 'Fingering', 'Sport', 'DK',
     'Worsted', 'Aran', 'Bulky', 'Super Bulky']
  end
end
