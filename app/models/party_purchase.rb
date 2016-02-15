class PartyPurchase < ActiveRecord::Base
belongs_to:purchase
belongs_to :admin
validates :party_purchase_list, :uniqueness => true
end
