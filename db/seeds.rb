# Fabricate(:user, 
#     username: "admin", 
#     password: "admin", 
#     role: "admin"
#   )

30.times do
  Fabricate(:user)
end

cat = ["ruby", "rails", "python", "html5", "css3", "bootstrap"]

cat.each do |c|
  Fabricate(:category, name: c)
end

200.times do
  p = Fabricate(:post,
    user_id: User.all.sample.id,
    created_at: rand(1..365).days.ago
  )

end

600.times do
  PostCategory.create(
    post: Post.all.sample, category: Category.all.sample
  )
end

2000.times do

  Fabricate(:comment, 
    user_id: User.all.sample.id, 
    post_id: Post.all.sample.id,
    created_at: rand(1..365).days.ago
  )

  Vote.create(
    user_id: User.all.sample.id,
    vote: [true, true, false].sample,
    voteable: Post.all.sample 
  )

  Vote.create(
    user_id: User.all.sample.id,
    vote: [true, true, false].sample,
    voteable: Comment.all.sample 
  )
end
