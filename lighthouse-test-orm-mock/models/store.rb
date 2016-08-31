class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true
  validates :name, length: { maximum: 25 }
  #or
  # validates :name,
  #    presence: true,
  #    length: { maximum: 25 }

  # validates :annual_revenue, numericality: {
  #   only_integer: true,
  #   greater_than_or_equal_to: 0
  # }
  # validates :male_employees, numericality: {
  #   only_integer: true,
  #   greater_than_or_equal_to: 0
  # }
  # validates :female_employees, numericality: {
  #   only_integer: true,
  #   greater_than_or_equal_to: 0
  # }
  # or
  validates :annual_revenue,
            :male_employees,
            :female_employees,
              numericality: {
              only_integer: true,
              greater_than_or_equal_to: 0
              }

  def annual_expense
    # employees.sum(:hourly_rate) * 1950
    # don't use the Employee as that is the memory version
    # not the table data.

    employees.sum(:hourly_rate) * Employee::TOT_BIL_RATE
  end

  def annual_profit
    self.annual_revenue - self.annual_expense
  end
end
