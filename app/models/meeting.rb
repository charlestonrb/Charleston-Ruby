class Meeting < ActiveRecord::Base
  belongs_to :organizations
  belongs_to :place
end
