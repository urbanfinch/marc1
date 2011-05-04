MARC
========================

This project is the public website for MARC in Columbus, NE.

Installation
============

First run Bundler and ensure your gems have installed correctly:

    $ sudo bundle install

The following rake tasks should be run for the software to run properly:

    $ rake db:migrate
    $ rake db:test:prepare
    $ rake db:seed

Then when you need to rebuild the database during development run:

    $ rake db:reset