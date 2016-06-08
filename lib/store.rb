class Store < ActiveRecord::Base
  validate :men_women_apparel, on: :create

  has_many :employees

  validates_length_of :name, minimum: 3
  validates_numericality_of :annual_revenue, :greater_than => 0


  def men_women_apparel
    errors.add(:men_women_apparel, "you need at least one type of apparel") unless mens_apparel || womens_apparel
  end

end
