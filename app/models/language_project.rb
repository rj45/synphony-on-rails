class LanguageProject < ActiveRecord::Base
  belongs_to :user
  has_many :graphemes
  has_many :phonemes
  has_many :spelling_patterns
  has_many :user_spelling_patterns
  has_many :words
  has_many :sentences
  has_many :sequences

  attr_accessible :english_name, :local_name, :public, :script, :slug

  def name
    english_name
  end


  def to_param
    slug
  end
end
