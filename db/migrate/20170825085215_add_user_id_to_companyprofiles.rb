class AddUserIdToCompanyprofiles < ActiveRecord::Migration[5.0]
  def change
    add_column :companyprofiles,:user_id,:integer
  end
end
