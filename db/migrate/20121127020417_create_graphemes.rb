class CreateGraphemes < ActiveRecord::Migration
  def change
    create_table :graphemes do |t|
      t.belongs_to :language_project
      t.string :name
      t.string :category
      t.boolean :zero_spaced
      t.integer :word_frequency
      t.integer :text_frequency

      t.timestamps
    end
    add_index :graphemes, :language_project_id
  end
end
