class ReasonForIdleTime < ActiveRecord::Base
belongs_to :order_summary
belongs_to :labour
belongs_to :admin
validates :reason_for_idle_time_list, :uniqueness => true
end
