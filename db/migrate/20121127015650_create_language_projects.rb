class CreateLanguageProjects < ActiveRecord::Migration
  def change
    create_table :language_projects do |t|
      t.string :slug
      t.string :english_name
      t.string :local_name
      t.string :script
      t.boolean :public
      t.belongs_to :user

      t.timestamps
    end
    add_index :language_projects, :user_id
  end
end
