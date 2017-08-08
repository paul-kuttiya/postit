Fabricator(:user) do
  username { Faker::Internet.unique.user_name }
  password { Faker::Internet.password }
end