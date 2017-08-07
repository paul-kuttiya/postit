Fabricate(:user, 
    username: "admin", 
    password: "admin", 
    role: "admin"
  )

100.times do
  Fabricate(:user)
end

cat = ["ruby", "rails", "python", "html5", "css3", "bootstrap"]

cat.each do |c|
  Fabricate(:category, name: c)
end

20.times do
  Fabricate(:post,
    user_id: User.all.sample.id,
    created_at: rand(1..365).days.ago
  )
end

60.times do
  PostCategory.create(
    post: Post.all.sample, category: Category.all.sample
  )
end

100.times do
  Fabricate(:comment, 
    user_id: User.all.sample.id, 
    post_id: Post.all.sample.id,
    created_at: (1..365).rand.days.ago
  )
end

100.times do
  Vote.create(
    user_id: User.all.sample.id,
    vote: true,
    voteable: Post.all.sample 
  )

  Vote.create(
    user_id: User.all.sample.id,
    vote: true,
    voteable: Comment.all.sample 
  )
end

30.times do
  Vote.create(
    user_id: User.all.sample.id,
    vote: false,
    voteable: Post.all.sample 
  )

  Vote.create(
    user_id: User.all.sample.id,
    vote: false,
    voteable: Comment.all.sample 
  )
end