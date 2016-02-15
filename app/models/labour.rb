class Labour < ActiveRecord::Base
  acts_as_paranoid
has_one:mould_no
has_one:party_order
has_one:machine_used
has_one:nature_of_work
has_one:finished_goods_name
has_one:reason_for_idle_time
#validates :order_no, :numericality=>true
end
