Fabricator(:post) do
  url { Faker::Internet.url }
  title { Faker::Internet.unique.domain_word }
  description { Faker::Lorem.paragraph(1, true, 3) }
end