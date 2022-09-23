# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

racoons = [
    {
        name: 'Julius',
        age: 45,
        hobbies: 'Loves To go to church, Ride dirt bikes, and Collect eggs',
        dislikes: 'Dislikes Sinning, Rock Music, and Halloween',
        img:'https://i.pinimg.com/564x/4c/19/ee/4c19ee1534048a8776b7b7121eec09dc.jpg'
    },
    {
        name: 'Todd',
        age: 19,
        hobbies: 'Loves to Eat, Sleep, and Pick flowers',
        dislikes: 'Dislikes Conflict, Negativity, Having dirty paws',
        img:'https://i.redd.it/18cz1f074iy31.jpg'
    },
    {
        name: 'Chardonnay',
        age: 29,
        hobbies: 'Loves to Go Clubbing, Designer Shoes, and Buying lots of random shit on amazon',
        dislikes: 'Dislikes Raccoons who dont pay for the first meal, Anyone looking for serious relationships, Gemini',
        img:'https://i.redd.it/nttni0lwh4t81.jpg'
    },
    {
        name: 'Big Pizza',
        age: 31,
        hobbies: 'Loves to volunteer at the local animal shelter, go hiking, and Watch the Bee movie',
        dislikes: 'Dislikes Pineapple on pizza, Astrology, Shitty Drivers',
        img:'https://i.redd.it/heo4fp2jmo291.png'
    },
    {
        name: 'Peppermint',
        age: 35,
        hobbies: 'Loves to Go to Coachella, Tarot card reading, and really into psychedelics',
        dislikes: 'Dislikes Racoons that bring down the vibe',
        img:'https://en.bcdn.biz/Images/2021/8/18/a6d0bd77-b7e6-4839-87be-7ee57fd851d5.jpg'
    },
    {
        name: 'Lil Sleepy',
        age: 25,
        hobbies: 'Loves to make music, rap about being tired, and really into psychedelics',
        dislikes: 'Dislikes When people dont check out his SoundCloud',
        img:'https://i.pinimg.com/564x/ac/9b/9a/ac9b9aa419d66095a219bb71832c0516.jpg'
    },
    {
        name: 'Shannon',
        age: 22,
        hobbies: 'Loves Cosplay, Video games, and KPop',
        dislikes: 'Dislikes When people talk shit about her bias, Spicy food, Hyper Masculine men (Joe Rogan/ Alex Jones enjoyers)',
        img:'https://i.redd.it/hkz61jhyc9r81.jpg'
    }
]
   

racoons.each do |each_racoons|
    Racoon.create each_racoons
    puts "creating raccoon #{each_racoons}"
end