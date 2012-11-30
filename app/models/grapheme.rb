class Grapheme < ActiveRecord::Base
  belongs_to :language_project
  attr_accessible :category, :name, :text_frequency, :word_frequency, :zero_spaced
end
