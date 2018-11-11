class CreateBookAbsolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :book_absolutions do |t|

      t.timestamps
    end
  end
end
