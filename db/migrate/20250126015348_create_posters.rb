class CreatePosters < ActiveRecord::Migration[8.0]
  def change
    create_table :posters do |t|
      t.references :campaign, null: false, foreign_key: true
      t.float :lat
      t.float :long
      t.string :url

      t.timestamps
    end
  end
end
