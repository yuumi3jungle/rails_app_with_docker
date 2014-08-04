#!/bin/bash -x

export RAILS_ENV=production
export SECRET_KEY_BASE=`rake secret`
rake db:migrate
unicorn_rails -c config/unicorn.rb