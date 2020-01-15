FactoryBot.define do
  factory :balance do
    cc_name { "Example Balance" }
    cc_balance { 53.96 }
    cc_due_date { 20200115 }
  end
end