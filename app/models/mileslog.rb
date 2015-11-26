class Mileslog < ActiveRecord::Base
  validates :odometer, presence: true
end
