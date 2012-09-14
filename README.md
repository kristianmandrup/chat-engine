# ChatEngine

ChatEngine is a Rails 3 Engine created to give web applications an easy to use chat system.

## Aim

The aim of this project is to make adding a chat engine to a Rails application quick and easy.

= Installation

In hosting app Gemfile

`gem 'chat-engine'`

Then `bundle` it from command line ;)

`rails g chat_engine:install`

To copy initializer to `config/initializers/chat_engine.rb`

## Rails Asset pipeline

Assets are made available from `vendor/assets` folder.

Javascripts

```
//= require chat-engine
//= require jquery.cssemoticons.min
//= require showdown
```

Stylesheets

```
*= jquery.cssemoticons
*= screen
```

*Without Rails Asset pipeline*

Copy `public` assets to `public` folder of your hosting app.

`rails g chat_engine:assets` 

## Pusher config

ChatEngine uses pusher to handle asychronous messaging. We have added a the necessary initializer for you to easily setup Pusher.

Locate chat_engine.rb in your initializer folder and change the following to your Pusher credentials.

```ruby
Pusher.app_id = 'APP ID'
Pusher.key = 'KEY'
Pusher.secret = 'PASS'
```

You are now ready to go!

## Basic features

* Users able to select colours for their messages
* Asynchronous chat messaging

## Future Features

* Guest users able to add comments
* Chat modules can be stacked to enhance the chats functionality
* Easy to use admin panel for managing chat functionality
* Easy to use admin panel for managing features available to users
* Manage multiple chatrooms

This project rocks and uses MIT-LICENSE.