class Balance < ApplicationRecord
  validates :cc_name, :cc_balance, presence: true
end
