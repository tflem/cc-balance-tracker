class Issue < ApplicationRecord
  belongs_to :balance
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
