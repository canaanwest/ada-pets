class PetsController < ApplicationController
  def index
    pets = Pet.all
    render(
      json: pets.as_json(only: [:age, :human, :id, :name]), status: :ok
    )

  end

  #Canaan's notes

  #local variables are better if you're not going to be using it in a view--because it's got a shorter lifespan. this means that we have a smaller chance of screwing something up

  #if you have an api, you don't have a session; there are no cookies to send back to the browser, because there is no browser; we are not dealing with HTML anymore... we are ONLY looking at json.

  #our view right now is rolled into the controller. this will not scale well. as we get more depth of data, this isn't going to work very well. we will get to a point where we start to separate out our concerns. but not taday, satan.

  #we use symbols because this is just ruby talking to ruby; we haven't actually parsed any json yet.

  #in this particular case, there really isn't a way for this request to go wrong; if we wanted a key, that would be a different story--we could send back a "not authorized" response.
end
