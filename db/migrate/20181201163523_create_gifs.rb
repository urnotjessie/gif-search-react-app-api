class CreateGifs < ActiveRecord::Migration[5.2]
  def change
    create_table :gifs do |t|
      t.text :source
      t.text :images
      t.text :title
    end
  end
end
