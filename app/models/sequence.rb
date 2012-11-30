class Sequence < ActiveRecord::Base
  belongs_to :language_project
  attr_accessible :name
end
