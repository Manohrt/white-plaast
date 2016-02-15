class User < ActiveRecord::Base
#belongs_to :admin
validates :name, presence: true, uniqueness: true
validates :password, length: { in: 6..20 },  presence: true, confirmation: true
validates :password_confirmation,length: { in: 6..20 },  presence: true
validates :role, :presence => true

end

