# Craft CMS 3 Starter theme

This is a starter theme for Craft CMS - it can be used as scaffolding for any project. It consists of:

* Boilerplate Twig files
* Base CSS code with Bulma framework included. Can be pretty opinionated.
* Gulp config for compiling JS and CSS assets and running browsersync
* Few useful Craft config settings

-------------------------

**Documentation can be found on [http://craftsnippets.com/starter-theme-for-craft-cms](http://craftsnippets.com/starter-theme-for-craft-cms).**

# Getting Set Up
The ixlab website uses Craft CMS as a foundation. Bulma is the visual framework of the website. Bulma is included in the files of this repo, however, there's a few other things you'll need to install in order to get up and ready for developing for the website.

You'll need:
* Composer
* Glup
* Node.js (Version 11)

## Installing Composer and Craft

Download Composer at https://getcomposer.org/download/
Once Composer is downloaded, you'll need to get it to install all of the dependencies required in the craft project. In your command prompt, navigate to this folder path.

```
composer install
```

This will tell composer to install craft as well as all of the plugins required as stated in the composer.json file.

Create your own .env file. Duplicate the .env.example.but.change.it file. Change the extension of the duplicated file to a .env. Update the information accordingly.

Craft should be set up in your cloned version, however, if it's not, use the command:

```
craft setup
```

to setup craft appropriately. If you get warnings and errors such as

```
unsupported declare 'strict_types' in Bootup.php on line 3

fatal error: default value for parameters with class type hint can only be NULL in Bootup.php on line 26
```

try to set up craft from the browser. This is done by typing in

`localhost/ixlab-craft/web/admin/install`

Follow the wizard accordingly. The wizard might ask you to set up the database. Enter in the information that matches your local environment. Remember the .env might need to be changed to best match your local environment.

## Installing Node.js

Downloading node.js gives us access to the amazing libraries, scripts, and plugins the community has created. Once node.js is downloaded and installed, you can start using npm to install things.

Note: For this repo, we use version 11. Version 12 is not compatible with Gulp version 3.

## Installing Gulp

```
npm install --global gulp-cli
```

We are using gulp to compile the sass code into css files.

# Database Details
Craft allows database syncing between environments. Ideally, this syncing would pull from the live server, however, we are still using github on our local machines. Hence, the database pulls will be from the master branch. The project.yaml file allows our local craft projects to sync up.

When Craft detects that project.yaml has changed, it will ensure that the versions of Craft and plugins described in the file are compatible with what’s actually installed. If there's a discrepancy between the database syncing, you will need to call composer to install again.

```
composer install

```
# Local Database Instance
In case you have to use a local instance of the database. There should be a sql file with the latest database changes in the repo. Create a database with the following details and import the file into the database.

**MySQL**

```
Default Character Set: utf8
Default Collation: utf8_unicode_ci
```

The project.yaml file should help sync up the rest of the updates if the file is out of date.
