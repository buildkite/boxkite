class CreateRepositories < ActiveRecord::Migration[7.1]
  def change
    create_table :repositories do |t|
      t.references :repository_type, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
