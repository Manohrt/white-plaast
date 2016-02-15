class OrderSummary < ActiveRecord::Base
  acts_as_paranoid sentinel_value: DateTime.new(0)
end
