class AddTitleToCompanyhonors < ActiveRecord::Migration[5.0]
  def change
    add_column :companyhonors, :title, :string
  end
end
