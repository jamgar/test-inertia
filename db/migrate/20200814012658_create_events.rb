class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.text :description

      t.timestamps
    end
  end
end
