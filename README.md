# charlestonruby.org

![Charleston Ruby Logo](http://www.charlestonruby.org/images/charleston-ruby.gif)

This is the Charleston Ruby User Group website project, a collaborative project built by the members of the User Group.

## Development Requirements

* MacOS or Linux
* Ruby 1.9.2
* RVM
* MySQL

## Fork and Hack

Please fork, grab an issue (just comment on it so that others know you're working on it), hack away, and send pull requests.

## Setting up you development environment

Assuming you forked the project

```
git clone git@github.com/[your-username]/Charleston-Ruby.git CharlestonRuby

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
```

[More information](http://bradlyfeeley.com/2008/09/03/update-a-github-fork-from-the-original-repo/) on working with remote repositories. Also please note that in GitHub nomenclature (if you're ever perusing the Help section), the remote is named "upstream" instead of "charlestonrb".

## License

See LICENSE