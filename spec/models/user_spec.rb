require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end

    it 'is not valid without a username' do
      user = FactoryBot.build(:user, username: nil)
      expect(user).not_to be_valid
    end

    it 'is not valid without a password' do
      user = FactoryBot.build(:user, password: nil)
      expect(user).not_to be_valid
    end

    it 'is not valid with a too short password' do
      user = FactoryBot.build(:user, password: 'short')
      expect(user).not_to be_valid
    end

    it 'is not valid with a duplicate username' do
      FactoryBot.create(:user, username: 'existing_user')
      user = FactoryBot.build(:user, username: 'existing_user')
      expect(user).not_to be_valid
    end

    it 'is not valid with a duplicate email' do
      FactoryBot.create(:user, email: 'existing@example.com')
      user = FactoryBot.build(:user, email: 'existing@example.com')
      expect(user).not_to be_valid
    end

    it 'is not valid without a name' do
      user = FactoryBot.build(:user, name: nil)
      expect(user).not_to be_valid
    end

    it "has an avatar attached" do
      user = FactoryBot.create(:user)
      expect(user.avatar.url).to be_present
    end

    it "validates the content type of the avatar" do
      user = FactoryBot.build(:user, avatar: Rack::Test::UploadedFile.new('spec/support/assets/ruby-ia.gif'))
      expect(user).to_not be_valid
    end
  end
end
