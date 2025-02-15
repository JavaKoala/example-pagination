class Company < ApplicationRecord
  def self.search(params)
    if params[:name].present?
      where("name LIKE ?", "%#{params[:name]}%")
    else
      all
    end
  end
end
