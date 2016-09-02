require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of :email }
    it { should validate_presence_of :admin }

    it "ensures email is unique" do
      user_one = create(:user, email: 'unique@example.com')
      user_two = build(:user, email: 'unique@example.com')

      expect(user_one).to be_valid
      expect(user_two).to be_invalid
    end
  end
end
