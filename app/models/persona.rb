class Persona < ApplicationRecord
  belongs_to :auto, foreign_key: :auto_id

  validates :nombres, presence: {:message => 'Debe escribir un nombre'}
  validates :rut , uniqueness: true
  validates :rut, numericality: true
end
