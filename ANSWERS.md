# Q0: Why is this error being thrown?

There are is no pokemon in the database or a pokemon_controller yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Chooses pokemon that do not have trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Creates a button that goes to patch capture_path (which is pokemon#capture), and puts the pokemon's id in params[id].

# Question 3: What would you name your own Pokemon?

@trainer.pokemon, but also I don't name my pokemon in-game because I can never think of a nickname.


# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirect_to trainer_path with the trainer ID.


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The next page that opens will flash that error; since we add validation to @pokemon, it automatically displays the error (as like a pop-up with red background at the top. same would happen for :success). errors.full_messages.to_sentence comes as a result of the validation in the Pokemon model.


# Give us feedback on the project and decal below!
None

# Extra credit: Link your Heroku deployed app
