class NatureOfWork < ActiveRecord::Base
belongs_to:labour
belongs_to :admin
validates :nature_of_work_list, :uniqueness => true
end
