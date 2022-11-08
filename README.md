# Deprecation Notice
This repository has been completely replaced by https://github.com/mafiascum/forum-deployment for development. It should not be necessary to use this repository any longer.

# MafiaScum Forum
This repo hosts the code used on https://forum.mafiascum.net

# IF DEVELOPING ON WINDOWS
Before cloning this repository, run:

`git config --global core.autocrlf input`

This will ensure that any file references don't have unexpected CRs at the end of them.

# Run with Docker Compose
This assumes your already have Docker and Docker Compose installed. If you don't, go find a guide for installing on the OS you're using (The official docs will likely be helpful here).

## First Time Setup
Copy `.env.sample` to `.env` and change it if necessary. You likely don't need to change anything.

You should then modify your /etc/hosts file to point, at the very least, forum.dev.mafiascum.net to your loopback ip address.
(Unless you changed this to a different domain in the prior step - use that instead in this case) 
Instructions on how to do this on all platforms can be found here: https://www.howtogeek.com/howto/27350/beginner-geek-how-to-edit-your-hosts-file/

you should end up with an entry that looks like the following
```
127.0.0.1 forum.dev.mafiascum.net
```

## Running
```bash
# Start services
docker-compose up

# Start services in detached mode (will return terminal control to you)
docker-compose up -d

# Reset services
docker-compose down
# Rebuild container
docker-compose build
```

## MariaDB Console
```bash
docker-compose exec database sh -c 'exec mysql -u"$DB_USER" -p"$DB_PASS" $DB_NAME'
```

## Browse the forum
Simply navigate to http://forum.dev.mafiascum.net


## Details
The database is provisioned with only a stock phpbb install.
The admin user and password is `admin:adminadmin`

On startup, a symlink will be created for each folder in `dev/` and `dev-styles/` (which are both mounted in the container). 
In practice, this means that you will be able to locally modify extensions and styles and see changes to them in real time.

if you need to add a new extension to the board, you'll need to add its repo to git_extensions, and then clone it under the `dev/` directory
if you need to add a new style to the board, you'll need to add its repo to git_styles, and then clone it under the `dev-styles/` directory


## Running Tests
a `docker-compose.test.yml` file has been provided with which to run tests for extensions that you may be currently developing. In order to use it, copy `test.env.sample` to `test.env`. The `dev` extensions are mounted to the `ext` directory inside of the phpbb installation, so in order to run tests for your local extensions in development, you may run:

```
docker-compose -f docker-compose-test-extension.yml run test phpBB/ext/mafiascum/<your extension>/phpunit.xml.dist
```
(You may get 'connection refused' in a loop until your database comes up. This is ok and your tests will run once the database is reachable)

You'll need to create the phpunit.xml.dist file in your extension's repo if you have not already done that.

Note that, while the barebones sql template is included here, the data will be wiped out when you run tests -- only the schema will persist. You should write your own test fixtures if you need data inside your db tables.

For more information on testing for phpbb extensions, visit https://area51.phpbb.com/docs/dev/3.2.x/extensions/tutorial_testing.html#
