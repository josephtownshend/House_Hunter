```
 __ __   ___   __ __  _____   ___      __ __  __ __  ____   ______    ___  ____  
|  |  | /   \ |  |  |/ ___/  /  _]    |  |  ||  |  ||    \ |      |  /  _]|    \ 
|  |  ||     ||  |  (   \_  /  [_     |  |  ||  |  ||  _  ||      | /  [_ |  D  )
|  _  ||  O  ||  |  |\__  ||    _]    |  _  ||  |  ||  |  ||_|  |_||    _]|    / 
|  |  ||     ||  :  |/  \ ||   [_     |  |  ||  :  ||  |  |  |  |  |   [_ |    \ 
|  |  ||     ||     |\    ||     |    |  |  ||     ||  |  |  |  |  |     ||  .  \
|__|__| \___/  \__,_| \___||_____|    |__|__| \__,_||__|__|  |__|  |_____||__|\_|
```                                                                              
                                                                            

A backend property search app built using Elixir, Phoenix & GraphQL

## Set Up

1. Clone this repo using `$ git clone git@github.com:josephtownshend/House_Hunter.git`
2. Make sure to change username / password in `devs.exs` file to your computer username and password.
3. `$ mix ecto.create` to create db
4. In order to migrate db use `$ mix ecto.migrate --step 1` this runs the 1st step and stops it from erroring.
5. Add more properties to the db in `priv/repo/seeds.exs` then load seed data with `$ mix run priv/repo/seeds.exs`

## To start your Phoenix server:

1. Install dependencies with `mix deps.get`
2. Create and migrate your database with `mix ecto.setup`
3. Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000/graphql`](http://localhost:4000/graphiql) from your browser.

You can search the listings database with these queries...
```
query {
  property(id: 2) {
    id
    location
    type
    bedrooms
  }
}
```
```
query {
  properties {
    id
    location
    type
    bedrooms
  }
}
```
