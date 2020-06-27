class Balance < ApplicationRecord
  validates :cc_name, :cc_balance, presence: true
  has_many :issues, dependent: :delete_all
end
