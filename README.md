### Setup 

First ensure that you have rails installed on your local machine. 
If running ruby -v does return 2.7 or higher you can check out the [official installation guide](https://www.ruby-lang.org/en/documentation/installation/).

After ensuring ruby is install run 

~~~
gem install rails 
~~~

After that you can clone this repository by running. 
 
 ~~~
 git clone git@github.com:linkonsat/private_events.git
 ~~~
 
 After that run the following commands in the newly installed directory.
 This will setup the db and  seed the cloned version with pre-seeded data if any exists.
 
 ~~~
 rails db:create
 rails db:migrate
 rails db:seed
 ~~~ 
 
 After letting these commands run you should be able to run.
 
 ~~~
 
 rails server
 
 ~~~
 
 At which point enter http://localhost:3000/ in your browser to visit the website locally!
 If you do not wish to do this feel free to visit the site at https://polar-crag-22146.herokuapp.com/.
 However please note that heroku tends to be a bit slower than on the local server.
 
 ### Lessons Learned
 1. Learned how to use active record associations to connect multiple model objects.
 2. How to utilize these associations to create private events.
 
 ### Roadmap 
 
 1. Add styling for current pages.
 2. Add system tests to start testing.
 3. Allow users to edit and delete the events they created.
 4. Allow users to remove themselves as an attendee to their “attended_events”.
 5. Make each event private and add the functionality for the event creator to invite specific users to an event.
