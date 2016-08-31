require_relative 'spec_helper'

describe Teacher do
  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:teachers)
  end

  context '#name' do
    before(:each) do
      @teacher = Teacher.new
      @teacher.assign_attributes(
        name: 'Pudding Love',
        email: 'pLove@love.com',
        address: '123 main st, city, st 23929',
        phone: '555-123-1231'
       )
    end

    it 'should have name' do
      [:name].each { |method| expect(@teacher).to respond_to(method) }
    end


  end

  context 'validations' do
    before(:each) do
      @teacher = Teacher.new
      @teacher.assign_attributes(
        first_name: 'Shawn Kreay',
        email: 'kreayshawn@oaklandhiphop.net',
        address: 'oh la home on the range'
        phone: '(510) 555-1212 x4567'
      )
    end

    it 'should accept valid info' do
      expect(@teacher).to be_valid
    end

    it "shouldn't accept invalid emails" do
      ['XYZ!bitnet', '@.', 'a@b.c'].each do |address|
        @teacher.assign_attributes(email: address)
        expect(@teacher).to_not be_valid
      end
    end

    it 'should accept valid emails' do
      ['joe@example.com', 'info@bbc.co.uk', 'bugs@facebook.com'].each do |address|
        @teacher.assign_attributes(email: address)
        expect(@teacher).to be_valid
      end
    end


    it "shouldn't allow two Teachers with the same email" do
      Teacher.create!(
        birthday: @teacher.birthday,
        email: @teacher.email,
        phone: @teacher.phone
      )
      expect(@teacher).to_not be_valid
    end
  end
end
