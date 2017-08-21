class CreatePins < ActiveRecord::Migration[5.1]
  def change
    create_table :pins do |t|
      t.references :user, foreign_key: true
      t.text :title
      t.text :image
      t.text :comment

      t.timestamps
    end
  end
end
