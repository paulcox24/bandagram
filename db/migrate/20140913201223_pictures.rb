class Pictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.date :date_taken
      t.string :location
      t.string :band
      t.references :user, index: true

      t.timestamps :built_at
    end
  end
end
