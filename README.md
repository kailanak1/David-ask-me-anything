## David's Personal Website 

This is a personal website for David. 

[See the live site here](https://david-quora-frontend.firebaseapp.com/).

## Technologies Used 
* Ruby version ruby-2.6.6 
* Active Record
* Rails

## Status 
Under Construction

## Installing Locally 
In order to fully use this project, you will need the [frontend](https://github.com/kailanak1/David-Ask-Me-Anything-FE).

Clone the project on your local machine by forking and cloning this respository. Copy the SSH link, open your terminal, and type:  
```$ git clone <SSH link>```

After cloning the repository, cd into the folder.  
```$ cd David-ask-me-anything```

Run bundle install to install your the gem package for this project.  
```$ bundle install```

While in the root directory, run rails db:create and rails db:migrate to create the database.   
```$ rails db:create```  
```$ rails db:migrate```

This project was made without seeding. Run rails s to start the server and navigate to your localhost port to see that Rails is running.  
```rails s```

## Getting Started
Create a user in your [backend](https://github.com/kailanak1/David-ask-me-any). You can do this in two ways: 

**Option 1:**
Open the backend. From the terminal, navigate to the root directory. Type rails c to open your the Rails console. 
```$ rails c```

In the Rails console, create a new user with username, password, and is_admin attributes. 
```$ User.create(username: "Jean-Luc", password: "Picard", is_admin: true)```

Exit the console.
```$ exit``` 

**Option 2:** 
In the backend, navigate to db/seeds.rb. Create a user in the seed file underneath User.destroy_all. 
```User.create(username: "James", password: "Kirk", is_admin: true)```

In your terminal, run rails db:seed. 
```$ rails db:seed```

After completing either option 1 or option 2, start your rails server again ```rails s``` and go to the localhost port hosting your front end. Go to Login from the navigation bar and enter your credentials. 

## Author 
Kailana Kahawaii

## Acknowledgements 
Kim Kong helped me brainstorm and troubleshoot this project. Check out her [github](https://github.com/nk2303)!


## License 
This project is licensed under the [GNU GPL](https://www.gnu.org/licenses/gpl-3.0.en.html)

    Copyright (C) <20202>  <Kailana Kahawaii>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.


