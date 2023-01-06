class Shop < ApplicationRecord
  has_many :opening_ranges, dependent: :destroy
  validates :name, presence: true
end
