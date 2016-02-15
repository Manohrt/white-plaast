class MachineNo < ActiveRecord::Base
validates :machine_no_list, :uniqueness => true
end
