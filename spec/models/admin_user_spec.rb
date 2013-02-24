require 'spec_helper'
describe AdminUser do
  describe '#full_name do' do
    it "should return the users first and last name as a string" do
      @user = FactoryGirl.build(:admin_user)
      @user.full_name.should == "#{@user.first_name} #{@user.last_name}"
    end
  end
end
