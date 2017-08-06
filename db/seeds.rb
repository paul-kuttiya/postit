Fabricate(:user, 
    username: "admin", 
    password: "admin", 
    role: "admin"
  )

49.times do
  Fabricate(:user)
end

cat = ["ruby", "rails", "python", "html5", "css3", "bootstrap"]

cat.each do |c|
  Fabricate(:category, name: c)
end

30.times do
  Fabricate(:post, user_id: User.all.sample.id)
end

100.times do
  PostCategory.create(
    post: Post.all.sample, category: Category.all.sample
  )
end

100.times do
  Fabricate(:comment, 
    user_id: User.all.sample.id, 
    post_id: Post.all.sample.id
  )
end