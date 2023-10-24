desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  p "creating sample data"

  if Rails.env.development? 
    FollowRequest.destroy_all
    Comment.destroy_all 
    Like.destroy_all
    Photo.destroy_all 
    User.destroy_all 
  do

  12.times do 
    p Faker::Name.first_name 

    u = User.create(
      email: "#{name}@example.com",
      password: "password",
      username: "name",
      private: [true, false].sample,
    )
    p u.errors.full_messages
  end 
  p "There are now #{User.count} users. "
end
