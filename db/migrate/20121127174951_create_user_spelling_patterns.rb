class CreateUserSpellingPatterns < ActiveRecord::Migration
  def change
    create_table :user_spelling_patterns do |t|
      t.integer :position
      t.belongs_to :user
      t.belongs_to :spelling_pattern
      t.boolean :focus

      t.timestamps
    end
    add_index :user_spelling_patterns, :user_id
    add_index :user_spelling_patterns, :spelling_pattern_id
  end
end
