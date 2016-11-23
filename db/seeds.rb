require 'faker'

Movie.create({title:"The Hunt for Red October"})
Movie.create({title: "Idiocracy"})
TvShow.create({name:"The IT Crowd"})
TvShow.create({name:"The Wire"})
Videogame.create({name:"Deus Ex: Human Revolution"})
Videogame.create({name:"Pokemon: Sun and Moon"})

5.times do |idx|
  User.create({:username => Faker::Internet.user_name,
             :email => Faker::Internet.email,
             :password => 'password'})
  end

30.times do |idx|
  choose = rand(1..6)
  if choose == 1
      Review.create({
                   reviewable_id: 1,
                   reviewable_type: Movie,
                   user_id: rand(1..5),
                   :score => rand(1..5),
                   :body => Faker::Lorem.paragraph(2, false, 4)
                   })
    elsif choose == 2
      Review.create(
                   reviewable_id: 2,
                   reviewable_type: Movie,
                   user_id: rand(1..5),
                   :score => rand(1..5),
                   :body => Faker::Lorem.paragraph(2, false, 4)
                   )
    elsif choose == 3
      Review.create(
                   reviewable_id: 1,
                   reviewable_type: TvShow,
                   user_id: rand(1..5),
                   :score => rand(1..5),
                   :body => Faker::Lorem.paragraph(2, false, 4)
                   )
    elsif choose == 4
      Review.create(
                   reviewable_id: 2,
                   reviewable_type: TvShow,
                   user_id: rand(1..5),
                   :score => rand(1..5),
                   :body => Faker::Lorem.paragraph(2, false, 4)
                   )
    elsif choose == 5
      Review.create(
                   reviewable_id: 1,
                   reviewable_type: Videogame,
                   user_id: rand(1..5),
                   :score => rand(1..5),
                   :body => Faker::Lorem.paragraph(2, false, 4)
                   )
    else
      Review.create(
                   reviewable_id: 2,
                   reviewable_type: Videogame,
                   user_id: rand(1..5),
                   :score => rand(1..5),
                   :body => Faker::Lorem.paragraph(2, false, 4)
                   )
    end
  end
