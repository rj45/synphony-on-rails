class Sentence < ActiveRecord::Base
  belongs_to :language_project
  attr_accessible :body, :reference
end
