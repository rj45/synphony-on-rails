class CreateSequences < ActiveRecord::Migration
  def change
    create_table :sequences do |t|
      t.belongs_to :language_project
      t.string :name

      t.timestamps
    end
    add_index :sequences, :language_project_id
  end
end
