class Word < ActiveRecord::Base
  belongs_to :language_project
  attr_accessible :name, :text_frequency

  has_many :word_spelling_patterns, order: "position ASC"
  has_many :spelling_patterns, through: :word_spelling_patterns,
      order: "word_spelling_patterns.position ASC"

  def self.with_user_spelling_patterns(usps)
    focus = usps.select {|usp| usp.focus? }
    sps_ids = usps.map {|usp| usp.spelling_pattern.id }
    words = focus.map {|f| f.words }.flatten
    words.reject do |word|
      word.spelling_patterns.any? do |sp|
        not sps_ids.include?(sp.id)
      end
    end
  end
end
