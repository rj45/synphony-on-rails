class Phoneme < ActiveRecord::Base
  belongs_to :language_project
  attr_accessible :category, :ipa, :name, :text_frequency, :word_frequency
end
