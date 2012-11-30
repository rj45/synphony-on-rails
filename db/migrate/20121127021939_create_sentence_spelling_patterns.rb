class CreateSentenceSpellingPatterns < ActiveRecord::Migration
  def change
    create_table :sentence_spelling_patterns do |t|
      t.belongs_to :sentence
      t.belongs_to :spelling_pattern

      t.timestamps
    end
    add_index :sentence_spelling_patterns, :sentence_id
    add_index :sentence_spelling_patterns, :spelling_pattern_id
  end
end
