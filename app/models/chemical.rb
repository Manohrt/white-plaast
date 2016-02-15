class Chemical < ActiveRecord::Base
belongs_to:order_summary
belongs_to:issue
belongs_to:admin
validates :chemical_list, :uniqueness => true
end
