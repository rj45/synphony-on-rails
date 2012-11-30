class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.belongs_to :language_project
      t.string :name
      t.integer :text_frequency

      t.timestamps
    end
    add_index :words, :language_project_id
  end
end
