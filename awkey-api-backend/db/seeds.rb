Like.destroy_all
Comment.destroy_all
Photo.destroy_all
User.destroy_all

10.times do
  User.create(username: Faker::Internet.user_name)
end

10.times do
  photo = Photo.new(uploader_id: User.first.id)
  photo.photo = Faker::Avatar.image
  photo.save

end

5.times do
  Comment.create(content: Faker::Hipster.sentence, commenter_id: User.first.id, photo_id: Photo.first.id)
end
Like.create(liker_id: User.last.id, photo_id: Photo.first.id)
