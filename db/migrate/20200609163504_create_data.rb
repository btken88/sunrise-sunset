class CreateData < ActiveRecord::Migration[6.0]
  def change
    create_table :data do |t|
      t.float :latitude
      t.float :longitude
      t.string :date
      t.string :sunrise
      t.string :sunset
      t.references :photo, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
