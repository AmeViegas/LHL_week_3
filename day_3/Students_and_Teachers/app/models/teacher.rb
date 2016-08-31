class Teacher < ActiveRecord::Base
  has_many :students
  
  validates_uniqueness_of :email
  validate :valid_email

  def valid_email
    errors.add(:email, "Is not valid") unless email =~ /.*?\@.*?\..*/
  end


end
