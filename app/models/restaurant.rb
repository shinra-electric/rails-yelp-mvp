class Restaurant < ApplicationRecord
  #validations & associations
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  CATEGORY = ["Chinese", "Italian", "Japanese", "French", "Belgian"]
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
