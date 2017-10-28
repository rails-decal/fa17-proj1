# Q0: Why is this error being thrown?
No Pokemon controller

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Seed file generates them. The home controller gets all Pokemons that do not belong to any trainers, and if a trainer is logged in and there exists a Pokemon that does not have a trainer, Pokemon will be displayed.
None of them has a trainer.


# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
capture_path(id: @pokemon) directs the user to the capture method in the pokemon controller and passes in the pokemon's id as a parameter.

# Question 3: What would you name your own Pokemon?
Hello world.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I put "/"(home page), and other like trainer_path, capture_path.

If there is not a path then where do we redirect to?


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It will show a flash error at the top with the whatever error that function generates here.(save gives the error!)

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
