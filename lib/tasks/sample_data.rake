namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "lelikGR",
                         email: "lelik928@mail.ru",
                         password: "vnc4369400",
                         password_confirmation: "vnc4369400",
                         admin: true)

    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name,
        email: email,
        password: password,
        password_confirmation: password)
    end

    users = User.all(limit: 10)
    50.times do
      content = Faker::Lorem.sentence(7)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end
end
