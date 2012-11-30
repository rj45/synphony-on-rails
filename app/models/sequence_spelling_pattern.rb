class SequenceSpellingPattern < ActiveRecord::Base
  belongs_to :sequence
  belongs_to :spelling_pattern
  attr_accessible :position
end
