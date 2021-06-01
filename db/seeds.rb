# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

restaurants = Restaurant.create([
    {
        name: "Mc Donalds",
        image_url: "https://d25dk4h1q4vl9b.cloudfront.net/bundles/front/media/images/favicons/favicon-512.png"
    },
    {
        name: "Taco Bell",
        image_url: "https://www.tacobell.co.cr/assets/img/taco_bell_logo.jpg"
    },
    {
        name: "KFC",
        image_url: "https://cclasarenas.com/wp-content/uploads/2020/04/kfc-las-arenas-768x516-1.jpg"
    },
    {
        name: "Burger King",
        image_url: "https://thinkmarketingmagazine.com/wp-content/uploads/2021/01/burger-king-logo-rebrand-bk-jkr_dezeen_2364_social_0.jpg"
    },
    {
        name: "Pizza Hut",
        image_url: "http://pm1.narvii.com/5659/33351cd53ecf955b3faa12acda74b0b4348a0c43_00.jpg"
    },
    {
        name: "Subway",
        image_url: "https://static.takeaway.com/images/restaurants/be/ON7NR1PN/logo_465x320.png"
    }
])

reviews = Review.create([
    {
        title: "Buen servicio",
        description: "Muy buena comida, lo mejor las papas fritas",
        score: 4,
        restaurant: restaurants.first
    },
    {
        title: "Comida muy pequeña",
        description: "La comida sabe bien pero muy pequeña",
        score: 2,
        restaurant: restaurants.first
    }
])
