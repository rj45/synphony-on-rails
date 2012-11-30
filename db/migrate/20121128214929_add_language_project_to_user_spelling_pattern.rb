class AddLanguageProjectToUserSpellingPattern < ActiveRecord::Migration
  def change
    add_column :user_spelling_patterns, :language_project_id, :integer
  end
end
