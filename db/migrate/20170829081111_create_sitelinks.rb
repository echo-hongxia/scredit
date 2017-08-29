class CreateSitelinks < ActiveRecord::Migration[5.0]
  def change
    create_table :sitelinks do |t|
      t.string :site_title
      t.string :site_link

      t.timestamps
    end
  end
end
