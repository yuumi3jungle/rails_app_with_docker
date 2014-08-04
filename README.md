# Sample of Ruby on Rails with Docker 

## This sample code includes

* Simple TODO Rails application
* Docker containers
 * PostgreSQL database
 * Rails application with Unicorn
 * Nginx front-end
* build/run docker Rake script

```
rake docker:build_app                   # Build Rails application container
rake docker:build_nginx                 # Build Nginx container
rake docker:build_pg                    # Build Postgresql container
rake docker:run_app                     # Run Rails application container
rake docker:run_nginx                   # Run Nginx container
rake docker:run_pg                      # Run Postgresql container
```

## License

[MIT License](http://www.opensource.org/licenses/MIT).