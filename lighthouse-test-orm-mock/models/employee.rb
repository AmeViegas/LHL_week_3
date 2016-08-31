class Employee < ActiveRecord::Base

  TOT_BIL_RATE = 1950

  belongs_to :store

  # validates :first_name, presence: true
  # validates :last_name,  presence: true
  validates :first_name,:last_name,
     presence: true

  after_create :increment_gender_ct, if: :store
        #if :store is not required but makes sure that
        #you only increment when there is a store. This
        #is only when you don't have a validation that all
        #employees have stores. if you have to have a store,
        #then this check doesn't make sense.

  after_destroy :decrement_gender_ct, if: :store


  def increment_gender_ct
    if gender == 'M'
      # store.male_employees = store.male_employees.to_i + 1
      store.male_employees += 1
      # store.save
    else
      store.female_employees = store.female_employees.to_i + 1
      # store.save
    end
    store.save #moved out of if statement.
  end


  def decrement_gender_ct
    # you don't want to use self b/c by default
    # if self.gender == 'M'
    if gender == 'M'
      store.male_employees = store.male_employees.to_i - 1
      store.save
    else
      store.female_employees = store.female_employees.to_i - 1
      store.save
    end
  end

  def annual_salary
    # hourly_rate * 1950
    hourly_rate * TOT_BIL_RATE
  end

  class << self
    # BECAUSE WE ARE WORKING WITH A SET OF employees
    # NOT JUST THE INDIVIDUAL PERSON.
    def average_hourly_rate_for(gender)
      # if gender.nil?
      #   (average(:hourly_rate)).round(2)
      # else
      #   # because class method don't need to explicitely
      #   #state table
      #   (Employee.where("gender = ?", gender).average(:hourly_rate)).round(2)
      # end
      emp_list = gender.nil? ? all : where(gender: gender)
      emp_list.average(:hourly_rate).to_f.round(2)

    end
  end
end
