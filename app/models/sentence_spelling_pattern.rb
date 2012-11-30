class SentenceSpellingPattern < ActiveRecord::Base
  belongs_to :sentence
  belongs_to :spelling_pattern
  # attr_accessible :title, :body
end
