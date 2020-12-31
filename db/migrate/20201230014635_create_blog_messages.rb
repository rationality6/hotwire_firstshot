class CreateBlogMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_messages do |t|
      t.string :body
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
