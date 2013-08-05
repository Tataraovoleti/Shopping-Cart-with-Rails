class Item < ActiveRecord::Base
  validates_presence_of :title, :description, :price, :image_url
end
