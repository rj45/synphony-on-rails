class CreateSequenceSpellingPatterns < ActiveRecord::Migration
  def change
    create_table :sequence_spelling_patterns do |t|
      t.integer :position
      t.belongs_to :sequence
      t.belongs_to :spelling_pattern

      t.timestamps
    end
    add_index :sequence_spelling_patterns, :sequence_id
    add_index :sequence_spelling_patterns, :spelling_pattern_id
  end
end
