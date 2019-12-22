class Balance < ApplicationRecord
  validates :cc_name, :cc_balance, :cc_due_date, presence: true
end
