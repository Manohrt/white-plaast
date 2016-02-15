class ColorIssue < ActiveRecord::Base
validates :color_issue_list, :uniqueness => true
end
