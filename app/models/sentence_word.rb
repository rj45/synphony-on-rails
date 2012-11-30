class SentenceWord < ActiveRecord::Base
  belongs_to :word
  belongs_to :sentence
  attr_accessible :position
end
