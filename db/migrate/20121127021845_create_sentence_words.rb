class CreateSentenceWords < ActiveRecord::Migration
  def change
    create_table :sentence_words do |t|
      t.integer :position
      t.belongs_to :word
      t.belongs_to :sentence

      t.timestamps
    end
    add_index :sentence_words, :word_id
    add_index :sentence_words, :sentence_id
  end
end
