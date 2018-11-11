class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :string
      t.1st :description
      t.string :Book
      t.string :in
      t.string :the
      t.string :Awakening
      t.string :Series
      t.string :image_url

      t.timestamps
    end
  end
end
