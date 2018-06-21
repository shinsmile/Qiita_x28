class CreateTagArticles < ActiveRecord::Migration[4.2][4.2][5.2]
  def change
    create_table :tag_articles do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true
      t.timestamps
    end
  end
end
