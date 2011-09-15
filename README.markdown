Dragdrop 
=========

This is a simple of example of testing jquery drag and drop sorting of a list with cucumber, capybara, and capybara-webkit or selenium.  Because I am having problems getting this to work, this project is serving to reproduce the issue.

To test:
    
    gem install bundler && bundle install
    rake db:migrate db:seed && RAILS_ENV=test rake db:migrate

With the capybara-webkit driver [install QT](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-QT) and execute:

    bundle exec cucumber features/drag_drop_list_items.feature

With selenium:

   WEB_TEST_JS_DRIVER=selenium bundle exec cucumber features/drag_drop_list_items.feature 


