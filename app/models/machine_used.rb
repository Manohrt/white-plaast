class MachineUsed < ActiveRecord::Base
belongs_to:labour
belongs_to :admin
validates :machine_used_list, :uniqueness => true
end
