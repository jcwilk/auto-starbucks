#!/usr/bin/env ruby

require 'bundler'

Bundler.require(:default)

Capybara::Webkit.configure do |config|
  config.allow_unknown_urls
  config.timeout = 30
  config.ignore_ssl_errors
  config.skip_image_loading
end

session = Capybara::Session.new(:webkit)

while(true) do
  session.visit 'http://craigslist.org'
  if session.text.include?('missed connections')
    sleep 10
  else
    puts 'redirect detected, getting wifi...'
    sleep 5
    begin
      session.click_on 'Give Me Wi-Fi'
    rescue Capybara::ElementNotFound
      puts 'not found, retrying...'
      sleep 5
      session.click_on 'Give Me Wi-Fi'
    end
    sleep 5 #let things resolve themselves before looping again
  end
end

