class Purchase < ActiveRecord::Base
  acts_as_paranoid
belongs_to :purchase
#alidates :order_no, :presence=>true { :message=> "Story title is required" }
#validates :order_no, presence:true
#validates :order_no, :numericality => {:only_integer => true}
end
