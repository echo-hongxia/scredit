class AddTitleToEliteteams < ActiveRecord::Migration[5.0]
  def change
      add_column :eliteteams, :title, :string
  end
end
