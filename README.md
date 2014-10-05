Dramatech on Rails (DToR)
=========

Dramatech on Rails (DToR) is the official web application for the Dramatech club at the Georgia Institute of Technology. We strive to provide students with an opportunity to involve themselves in the arts and grow in their knowledge of public speaking, acting, singing, and improvisation, while instilling a comforting sense of community for all those involved.

This repository is for development only. Production is hosted on OpenShift and is managed by the Dramatech webmaster. For information about using the Dramatech website, please go to [dramatech.org](http://dramatech.org/).

----

Version & Status (Master)
---------
![v0.1.0 build failed](http://b.repl.ca/v1/v0.1.0-build_failed-red.png)

----

Installing
---------

Currently, development is only fully supported on OS X and Linux. If you're on Windows, you'll need to try to follow along to the best of your ability.

### System Prequisites
Please follow these instructions, in order, to get all the resources needed to run our Rails app; otherwise, it might not work correctly!

#### Xcode
Apple's Xcode is required for all developers. If you're on Linux, make sure you have some sort of command-line development tools installed for your flavor of linux.

#### Homebrew
Homebrew is a utility that allows you to install all the command-line stuff you need to be awesome. Basically, it's magic in a package named for beer breweries that makes it super easy to get widely used open source programs you will use as a developer.

##### Installation Instructions
1. Open Terminal
2. Run this script: `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

##### Basic Usage
1. Open Terminal
2. `cd` into your home directory
3. Run `brew install {insert package here}` to install any package you need.
4. If you run into errors, try running `brew doctor` to check your Homebrew installation.

*Side Note:* Homebrew for Linux is available as [Linuxbrew](http://brew.sh/linuxbrew/), if you happen to be running Linux.

----

#### Git
Git is a handy-dandy tool that developers use to collaborate on projects together. It helps with merging code so that multiple people can work on one file at one, online or offline.

##### Installation Instructions
1. Open Terminal
2. `cd` into your home directory.
3. Run this script: `brew install git`

##### Usage
Google "Git" and you'll find a slew of tutorials on Git. The basic concept of Git revolves around commits and pull requests, which allow you to merge your work with others' work; [GitHub](http://github.com) has a great intro to the Git workflow and how to get used to it.

----

#### ImageMagick
ImageMagick is a tool that does image modifications, writes images to files, and converts images to different formats. It's required for some of the gems we use, so you should go ahead and install it.

##### Installation Instructions
1. Open Terminal
2. `cd` into your home directory
3. Run this script: `brew install imagemagick`

----

#### PostgreSQL
PostgreSQL is a database much like MySQL; its open source and quite reliable. We have opted for Postgres for its easy integration and continuous updates.

##### Installation Instructions
1. Open Terminal
2. `cd` into your home directory
3. Run this script: `brew install postgresql`
4. Follow the instructions to load Postgres at login, as well as right now
5. Then run: `createdb {your database name here} --owner={database user here} -w` twice; once for a development database, one more time for a test database
6. Write your database names and usernames down for future use!

----

#### Ruby Version Manager (RVM)
RVM makes it easy to manage your versions of Ruby in project directories and install the latest stable versions.

##### Installation Instructions
1. Open Terminal
2. `cd` into your home directory.
3. Run this script: `\curl -sSL https://get.rvm.io | bash` and follow the on-screen instructions. You will need to close and re-open your Terminal window(s) after installing it.
4. Install Ruby 2.1.1: `rvm install 2.1.1`
5. Set RVM to use Ruby 2.1.1: `rvm use 2.1.1`
6. Set Ruby 2.1.1 to be the default: `rvm --default use 2.1.1`

##### Basic Usage
- To install a version of Ruby, type `rvm install {your Ruby version}`
- To use a version of Ruby, type `rvm use {your Ruby version}`

----

#### Bundler
Bundler is a Ruby gem that helps you a group of developers distribute a list of gems that everyone needs to use for an application to work, without putting it all in a Readme.

##### Installation Instructions
1. Open Terminal
2. `cd` into your home directory.
3. Install the gem: `gem install bundler`

##### Basic Usage
- To get all the gems needed for a Gemfile, run `bundle install`
- To rebuild all of the gems for a Gemfile and remake your Gemfile.lock, run `bundle update` (warning - you should not do this without talking to your whole dev team!)

### Get the Project
1. `cd` into the folder you want the repository to reside in
2. Run `git clone https://deanpapastrat@bitbucket.org/deanpapastrat/dramatech-app.git`.
3. Use your Bitbucket credentials to authenticate, then wait for it to download.

## Setting Up

### Install the Project's Resources
1. `cd` into the repository folder.
2. Run `bundle install`; it will take a while to install all the gems for the first time.

### Configure the Project's Databases
1. Go into /config in the app, and then copy "copy_to_development.yml" as "development.yml".
2. Edit development.yml to include your database names, which you wrote down earlier.
3. Run `rake db:create db:migrate` to setup your database for the first time.

## Get Going!
- Run `rails s` to start your server. You can access it at [localhost:3000](http://localhost:3000).
- We recommend running `rails c` in a separate bash tab so you can make direct changes without a problem.
- To perform tests, run `rake tests`. Nyan Cat will appear, just for you!

## More Advice & Tips
Check the wiki for more on developing the Dramatech app; we have instructions for viewing the rdocs and other types of documentation along with test writing.

## Credits
Dramatech Application created by Dean Papastrat, [dean.g.papastrat@gmail.com](mailto:dean.g.papastrat@gmail.com) and Ben Hirsch. Previous website created by Dramatech Alumni.

© Dramatech 2014. All rights reserved.