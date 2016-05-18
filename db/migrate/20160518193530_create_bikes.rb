class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
