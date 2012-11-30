class UserSpellingPattern < ActiveRecord::Base
  belongs_to :user
  belongs_to :spelling_pattern
  belongs_to :language_project
  attr_accessible :focus, :position, :spelling_pattern_id, :language_project_id

  delegate :words, to: :spelling_pattern
end
