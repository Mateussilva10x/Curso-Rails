class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.references :subject, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
