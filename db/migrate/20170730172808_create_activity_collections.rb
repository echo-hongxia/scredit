class CreateActivityCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_collections do |t|
      t.integer :activity_id
      t.integer :user_id

      t.timestamps
    end
  end
end
