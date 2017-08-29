class AddTitleToCompanycultures < ActiveRecord::Migration[5.0]
  def change
    add_column :companycultures, :title, :string
  end
end
