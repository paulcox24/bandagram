class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|

      t.timestamps :built_at
    end
  end
end
