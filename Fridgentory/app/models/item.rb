class Item < ActiveRecord::Base

  belongs_to :category
  has_many :ingredients

end
