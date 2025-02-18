class AddCompanyTypeToCompanies < ActiveRecord::Migration[8.0]
  def change
    add_column :companies, :company_type, :integer, null: false, default: 0
  end
end
