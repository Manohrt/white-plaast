class ChemicalType < ActiveRecord::Base
belongs_to :order_summary
belongs_to :issue
belongs_to :admin
end
