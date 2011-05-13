# Charleston Ruby dot ORG

![charleston ruby logo](http://www.charlestonruby.org/images/charleston-ruby.gif)

This is the charleston ruby group website project, this project is work of the charleston ruby community.

## Development Requirements

* MacOS or Linux
* Ruby 1.9.2
* RVM
* MySQL

## Fork and Hack

Please fork, grab and issue and hack away.

## Setting up you development environment

Assuming you forked the project

```
git clone git@github.com/[username]/CharlestonRuby.git
```

```
cd CharlestonRuby
# should switch to 1.9.2@railspre --create
bundle install
rake db:create
rake db:migrate
rails s
```

## License

see LICENSE