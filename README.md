## RAILS Messaging Assignment w. 5 Craft Academy Lions

**Planning**
See our plan on PivotalTracker https://www.pivotaltracker.com/n/projects/2132546

**Assignment**
Ruby 2.4.0
Code forked from CraftAcademy 

Using untested legacy code do following:
Write Acceptance tests for the entire workflow using Cucumber
Write Unit tests for the models using RSpec
Find and correct eventual errors in the legacy code
Set up an automated way of deploying the software with Heroku

**Install**

Add to Gemfile:
```
group :development, :test do
   gem 'factory_bot_rails'
   gem 'pry-byebug'
   gem 'pry-rails'
   gem 'rspec-rails'
   gem 'shoulda-matchers'
   gem 'cucumber-rails', require: false
   gem 'database_cleaner'
```
Add to .rspec:
```
--color
--format documentation   
```
Add to config/application.rb:
```
 generate.routing_specs false
 generate.controller_specs false

```
Add shoulda-matchers to rails-helper:
```
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
  with.test_framework :rspec
  with.library :rails
```
Add `coveralls` and requirements    
