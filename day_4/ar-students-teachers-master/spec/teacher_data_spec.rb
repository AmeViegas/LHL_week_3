require_relative 'spec_helper'

describe Teacher, 'Sample data' do
  before :each do
    Teacher.create(name: "Jim Beam", email:"jbeam@gmail.com", address: "5 list st. city,st 39296", phone: "393-393-2299")
  end

  it 'should create a teacher' do
    expect(Teacher.where('name = ?', 'Jim Beam')).to_not be_empty
  end
end
