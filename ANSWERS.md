# Q0: Why is this error being thrown?
The Pokemon model was undefined and the HomeController was trying to reference it so you will get a uninitialized constant error.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
If someone is logged in and there are wild, trainerless pokemon, they will appear. Specifically, in the index method of the HomeContoller, each time the home page is rendered, the method will sample from a list of wild pokemon and choose to display that one. The common facto is that they do not have a trainer.

# Question 2: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This creates a button (with the text "throw a pokeball") that when clicked, will do a PATCH request to the capture path which we define in routes and the capture method of the PokemonsController. The capture path takes in the id of the pokemon displayed and sets the trainer id of that pokemon to the currently logged in trainer.

# Question 3: What would you name your own Pokemon?
Spongebob

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
redirect_to trainer_path(pokemon.trainer)  

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
In views/layouts/application.html.erb we see that it renders 'layouts/messages' via the line `<%= render 'layouts/messages' %>`.
Then we can inspect that in the `_messages.html` partial, it loops through the `flash` hash to display any messages it contains. So when we set the error key to our message, it will get displayed.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
