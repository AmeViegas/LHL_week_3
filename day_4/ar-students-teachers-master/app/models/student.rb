class Student < ActiveRecord::Base
  # implement your Student model here
  belongs_to :teacher

  after_save :last_student_added_at, if: :teacher

  validates_uniqueness_of :email
  validate :valid_email

  validates :age,   numericality: { greater_than: 3}

  def valid_email
    errors.add(:email, "Is not valid") unless email =~ /.*?\@.*?\..*/
  end

  def age
    now = Time.now.utc.to_date
    now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def last_student_added_at
    teacher.last_student_added_at = Time.now.utc.to_date
  end

end
