class CreateCurds < ActiveRecord::Migration[5.1]
  def change
    create_table :curds do |t|
      t.integer :adno
      t.string :name
      t.string :gender
      t.string :standard

      t.timestamps
    end
  end
end
