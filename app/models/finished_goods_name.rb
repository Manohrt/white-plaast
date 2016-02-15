class FinishedGoodsName < ActiveRecord::Base
belongs_to:labour
belongs_to:order_summary
belongs_to :admin
validates :finished_goods_name_list, :uniqueness => true
end
