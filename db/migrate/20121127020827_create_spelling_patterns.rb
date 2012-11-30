class CreateSpellingPatterns < ActiveRecord::Migration
  def change
    create_table :spelling_patterns do |t|
      t.belongs_to :language_project
      t.belongs_to :grapheme
      t.belongs_to :phoneme
      t.integer :word_frequency
      t.integer :text_frequency

      t.timestamps
    end
    add_index :spelling_patterns, :language_project_id
    add_index :spelling_patterns, :grapheme_id
    add_index :spelling_patterns, :phoneme_id
  end
end
