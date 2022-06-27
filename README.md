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
 2. How to utilize these associations to retrieve specific information from another model object.
 3. How to use a relational database such as PostgreSQL to store records and build associations.
 4. How to use RSpec to create unit tests for models.
 5. How to use CSS animations and stylings to add flare to the user facing portion.
 6. How to use Sidekiq to make an application scaleable and able to handle large requests from the front-end.