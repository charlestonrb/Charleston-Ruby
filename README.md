Charleston Ruby dot ORG - text edit

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
git clone git@github.com/[username]/Charleston-Ruby.git
```

```
cd CharlestonRuby
# should switch to 1.9.2@railspre --create
gem install bundler
bundle install
rake db:create
rake db:migrate
rails s
```

## How do I keep my fork up to date?

```
git remote add --track master charlestonrb git://github.com/charlestonrb/Charleston-Ruby.git

git fetch charlestonrb

git merge charlestonrb/master

[More Info](http://bradlyfeeley.com/2008/09/03/update-a-github-fork-from-the-original-repo/)

```


## License

see LICENSE
