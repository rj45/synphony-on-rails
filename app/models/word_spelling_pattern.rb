class WordSpellingPattern < ActiveRecord::Base
  belongs_to :word
  belongs_to :spelling_pattern
  attr_accessible :position
end
