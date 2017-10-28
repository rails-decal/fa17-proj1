# Q0: Why is this error being thrown?
  There is no pokemon model to be controlled.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
  All of the Pokemon are appearing because they are in the seed.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
  When the button is pressed, it sends that instance of the pokemon to the capture method.

# Question 3: What would you name your own Pokemon?
  KACHOWWW

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
  I used redirect_to trainer_path(pokemon.trainer_id). This passes in the id of the current trainer so that the page can redirect to the correct (current) trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
  This command takes all of the errors produced from attempting to create that @pokemon instance, and prints them out as a sentence on the form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
