class Contact < ApplicationRecord

  def full_name
  "#{self.first_name} #{self.last_name}"
 end

  has_one :address


end