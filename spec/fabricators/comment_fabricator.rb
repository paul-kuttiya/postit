Fabricator(:comment) do
  body { Faker::Lorem.paragraph(1, true, 2 ) }  
end