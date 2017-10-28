# Q0: Why is this error being thrown?
The Pokemon Controller is referenced in home#index but isn't initialized, thus throwing the error.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They all have no trainer. They are appearning because they are created with the seeds.rb file and are then displayed on index.html in home. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It updates the individual pokemon that is binded to it through the capture method in the Pokemon Controller.

# Question 3: What would you name your own Pokemon?
'Swagman'
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path was passed in. It needed the trainer of the pokemon which I was able to extract using trainer_id. 
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
applications.html.erb is essentially the layout of every page in our app. By using flash[:error] and setting such an attribute to the errors gathered by creating a pokemon with the same name as another one, we add a value to the flash array, which then gets displayed through the messages.html.erb file which loops through the flash array and displays the messages in a flash message.
# Give us feedback on the project and decal below!
The project was fine but it is somewhat frustrating that debugging takes forever and that the class seems to quiz memorization and the small syntactical quirks of Ruby versus a legitimate mastering of the concepts. 
# Extra credit: Link your Heroku deployed app
