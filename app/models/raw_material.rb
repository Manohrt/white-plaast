class RawMaterial < ActiveRecord::Base
 belongs_to:order_summary
 belongs_to :admin
validates :raw_material_list, :uniqueness => true
end
