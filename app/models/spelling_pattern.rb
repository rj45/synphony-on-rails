class SpellingPattern < ActiveRecord::Base
  belongs_to :language_project
  belongs_to :grapheme
  belongs_to :phoneme
  has_many :word_spelling_patterns
  has_many :words, :through => :word_spelling_patterns

  attr_accessible :text_frequency, :word_frequency

  delegate :name, to: :grapheme

end
