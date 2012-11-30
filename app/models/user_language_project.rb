class UserLanguageProject < ActiveRecord::Base
  belongs_to :user
  belongs_to :language_project
  # attr_accessible :title, :body
end
