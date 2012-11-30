class CreateUserLanguageProjects < ActiveRecord::Migration
  def change
    create_table :user_language_projects do |t|
      t.belongs_to :user
      t.belongs_to :language_project

      t.timestamps
    end
    add_index :user_language_projects, :user_id
    add_index :user_language_projects, :language_project_id
  end
end
