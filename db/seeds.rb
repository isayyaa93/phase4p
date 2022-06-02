# Initialize + Save Four Productions
p1 = Production.create(
    title: 'Hamlet', 
    genre: 'drama', 
    director: 'Bill Shakespeare', 
    description: 'The Tragedy of Hamlet, Prince of Denmark', 
    budget: 100000.00, 
    image: 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Edwin_Booth_Hamlet_1870.jpg', 
    ongoing: true
)
p2 = Production.create(
    title: 'Cats', 
    genre: 'musical', 
    director: 'Andrew Lloyd Webber', 
    description: 'Jellicles cats sing and dance', 
    budget: 200000.00, 
    image: 'https://upload.wikimedia.org/wikipedia/en/3/3e/CatsMusicalLogo.jpg', 
    ongoing: true
)
p3 = Production.create(
    title: 'Carmen', 
    genre: 'opera', 
    director: 'Georges Bizet', 
    description: 'Don José and Escamillo fight over Carmen', 
    budget: 100000.00, 
    image:'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Prudent-Louis_Leray_-_Poster_for_the_premi%C3%A8re_of_Georges_Bizet%27s_Carmen.jpg/875px-Prudent-Louis_Leray_-_Poster_for_the_premi%C3%A8re_of_Georges_Bizet%27s_Carmen.jpg', 
    ongoing: false
)
p4 = Production.create(
    title: 'Swan Lake', 
    genre: 'ballet', 
    director: 'Giscard Rasquin and Pyotr Ilyich Tchaikovsky', 
    description: 'The story of Odette, a princess turned into a swan by an evil sorcerers curse. ', 
    budget: 50000.00, 
    image: 'https://upload.wikimedia.org/wikipedia/commons/3/3c/Swanlakemordkin.jpg', 
    ongoing: false
)

# Initialize + Save Eight Production Roles
ProductionRole.create!(role:'Hamlet', understudy:true, production: p1)


# Initialize + Save Six Users
u1 = User.create(name: 'isaiah', email: 'isaiah@gmail.com', admin: true, password: "password")


# Initialize + Save Twelve Tickets
Ticket.create!(user:u1, production:p2, price:65.00)


# Confirm Seeding Has Completed
puts '🌱 Seeding Done!'