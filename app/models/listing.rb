class Listing < ApplicationRecord

  belongs_to :user

  def is_available?
    if self.available == true
      return true
    end
  end

end

  