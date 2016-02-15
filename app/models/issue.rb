class Issue < ActiveRecord::Base
  acts_as_paranoid
has_one:chemical_type
has_one:party_order
has_one:chemical
#validates :order_no, :numericality=>true
end
