class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.belongs_to :language_project
      t.string :reference
      t.string :body

      t.timestamps
    end
    add_index :sentences, :language_project_id
  end
end
