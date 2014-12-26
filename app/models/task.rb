class Task < ActiveRecord::Base
  validates_presence_of :title, :description

  default_scope { order("priority ASC") }
end
