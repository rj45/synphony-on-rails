class CreatePhonemes < ActiveRecord::Migration
  def change
    create_table :phonemes do |t|
      t.belongs_to :language_project
      t.string :name
      t.string :ipa
      t.string :category
      t.integer :word_frequency
      t.integer :text_frequency

      t.timestamps
    end
    add_index :phonemes, :language_project_id
  end
end
