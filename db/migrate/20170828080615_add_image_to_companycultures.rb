class AddImageToCompanycultures < ActiveRecord::Migration[5.0]
  def change
    add_column :companycultures, :image, :string
  end
end
