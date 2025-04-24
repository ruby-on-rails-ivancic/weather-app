# Project: OpenWeather API

### What's this

A simple app that displays realtime weather data using the OpenWeather API. It uses the OpenWeather API to get realtime weather data for cities around the world and display them on the page

### Functionality

This app uses the OpenWeather API to get realtime weather data for cities around the world.

### Built With

- Ruby on Rails - Web framework
- dotenv-rails - Rails gem
- open-weather-ruby-client - Rails gem
- Tailwind CSS

### Getting started

To get started with the app, make sure you have Rails and Git installed on your machine  
Clone the repo to your local machine: 
```ruby
$ git clone https://github.com/ruby-on-rails-ivancic/weather-app.git
```
Then, install the needed gems:
```ruby
$ bundle install
```
You'll need your OpenWeather API key which you will then place inside your .env file
```ruby
$ touch .env
```
Then, in your .env file
```ruby
$ OPENWEATHER_API_KEY=your_api_key_here
```

Start the server:
```ruby
$ bin/dev
```
Open browser to view application:
```ruby
localhost:3000
```

