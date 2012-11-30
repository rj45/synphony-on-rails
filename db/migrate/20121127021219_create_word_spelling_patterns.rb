class CreateWordSpellingPatterns < ActiveRecord::Migration
  def change
    create_table :word_spelling_patterns do |t|
      t.integer :position
      t.belongs_to :word
      t.belongs_to :spelling_pattern

      t.timestamps
    end
    add_index :word_spelling_patterns, :word_id
    add_index :word_spelling_patterns, :spelling_pattern_id
  end
end
