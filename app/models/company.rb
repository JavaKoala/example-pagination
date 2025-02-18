class Company < ApplicationRecord
  enum :company_type, { public_company: 0, private_company: 1, non_profit: 2 }, default: :public, validate: true

  def self.search(params)
    if params[:name].present?
      where("name LIKE ?", "%#{params[:name]}%")
    else
      all
    end
  end
end
