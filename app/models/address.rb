class Address < ApplicationRecord
  belongs_to :contact
  validates :zip, numericality: { only_integer: true}
  validates :zip, length: {
    is: 5,
    message: 'a zip code is only 5 numbers long'
  }
end
