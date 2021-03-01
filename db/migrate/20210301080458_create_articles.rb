class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.references :author, index: true
      t.string :visibility, null: false

      t.timestamps
    end
  end
end
