class Item < ApplicationRecord
  has_rich_text :description
  validates :name, presence: true
end
