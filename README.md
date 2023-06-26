# README

## API Dogs

<b>Api Dogs</b> is an example project of API mode in Rails.

## Motivation

I have been motivated to build this application because I wanted to build an example project in Ruby on Rails API mode. This project is part of a Code Challenge where we have had the mission to import some data (dogs `images` and `names`) in our local database from an external Dogs API (https://dog.ceo/api/breeds/image/random) and create an endpoint to display the information. The import has been processed in a scheduled task that runs every day.

## Tech/framework used

Built with [Ruby on Rails](https://rubyonrails.org/).
- Ruby version: 3.1.2p20
- Rails version: 7.0.3

Database:
- Sqlite

Frontend:
- No FE, data exposed in JSON format.

## Application screenshots

- Example of successfull requests:

[![Captura-de-Pantalla-2023-06-26-a-las-13-03-32.png](https://i.postimg.cc/4dbJwNPy/Captura-de-Pantalla-2023-06-26-a-las-13-03-32.png)](https://postimg.cc/jw20STGY)

[![Captura-de-Pantalla-2023-06-26-a-las-17-20-37.png](https://i.postimg.cc/VkwtVh9V/Captura-de-Pantalla-2023-06-26-a-las-17-20-37.png)](https://postimg.cc/GHM9Bq5F)


## Installation

1. Install [Ruby on Rails](https://edgeguides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails)
2. Clone this repository.
3. Database set up:
- Create the database `rails db:create`
- Run migrations `rails db:migrate`
- Run seeds `rails db:seed`

## Test

- `rspec spec/`

## Run

- Execute: `rails server`
- Access to http://localhost:3000/api-docs/index.html to see swagger information API
- Example of request:
```
curl -X 'GET' \
  'http://localhost:3000/api/v1/dogs' \
  -H 'accept: */*'
```



