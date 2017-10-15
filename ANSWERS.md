# Q0: Why is this error being thrown?
The Pokemon Model hasn't been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
All the pokemon have no trainer. Also, all 4 pokemon have been generated from the seed file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
I think 'button_to' is a method that takes in certain params. 1) The first param is the text displayed on the button. 2) The second param seems to be the path that the button directs to. In this case, it seems that capture_path refers to the path "/capture", which we created a patch route to in routes.rb with a prefix of 'capture'. The (id: @pokemon) part is making the URL that the button directs to become ".../capture?id=x" where x is the id of the given 'trainerless' pokemon in the home controller's index method. 3) The third param seems to specify the type of button created - in this case, a medium button. 4) The fourth param seems to tell the button what kind of verb in routes.rb it should be looking for - in this case, a 'patch' verb.

# Question 3: What would you name your own Pokemon?

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected to the trainer_path and passed in params[:trainer_id]. I passed in :trainer_id through the show view; it's a symbol containing the id of the trainer whose pokemon you are damaging.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
flash[:error] flashes an error, but we need to give it what to say. @pokemon.errors.full_messages.to_sentences seems to take the error coming from the Pokemon model, get the full message, and convert it into a sentence for flash[:error] to display.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
