# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = '563863'
Pusher.key = '2972102a18065275cb51'
Pusher.secret = 'c6862b088db977d83ae2'
Pusher.cluster = 'ap1'
Pusher.logger = Rails.logger
Pusher.encrypted = true

# app/controllers/hello_world_controller.rb
class HelloWorldController < ApplicationController
  def hello_world
    Pusher.trigger('my-channel', 'my-event', {
      message: 'hello world'
    })
  end
end
