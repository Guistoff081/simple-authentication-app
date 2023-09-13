FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    username { Faker::Internet.unique.username }
    email { Faker::Internet.unique.email }
    password { Faker::Internet.password(min_length: 8) }
    avatar { Rack::Test::UploadedFile.new(
      Rails.root.join('spec', 'support', 'assets', 'default_avatar.jpg'),
      'image/png'
    ) }
  end
end
