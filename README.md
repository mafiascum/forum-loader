# MafiaScum Forum
This repo hosts the code used on https://forum.mafiascum.net

# Run with Docker Compose
This assumes your already have Docker and Docker Compose installed. If you don't, go find a guide for installing on the OS you're using (The official docs will likely be helpful here).

## First Time Setup
Copy `.env.sample` to `.env` and change it if necessary.

## Running
```bash
# Start services
docker-compose up
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
The forum is accessible on http://docker-host - which is probably http://localhost unless you are using Docker Machine.

## Details
The database is automatically provisioned with a skeleton dataset. Default username/password is Kison/abc123. Resetting the services and rerunning will wipe the database, allowing start from a clean slate.

On startup, a symlink will be created for each folder in `dev/` (which is mounted in the container). This is acceptable for development, but should not be used in production.

## Running Tests
a `docker-compose.test.yml` file has been provided with which to run tests for extensions that you may be currently developing. In order to use it, copy `test.env.sample` to `test.env`. The `dev` extensions are mounted to the `ext` directory inside of the phpbb installation, so in order to run tests for your local extensions in development, you may run:

```
docker-compose -f docker-compose-test-extension.yml run test phpBB/ext/mafiascum/<your extension>/phpunit.xml.dist
```
(You may get 'connection refused' in a loop until your database comes up. This is ok and your tests will run once the database is reachable)

You'll need to create the phpunit.xml.dist file in your extension's repo if you have not already done that.

Note that, while the barebones sql template is included here, the data will be wiped out when you run tests -- only the schema will persist. You should write your own test fixtures if you need data inside your db tables.

For more information on testing for phpbb extensions, visit https://area51.phpbb.com/docs/dev/3.2.x/extensions/tutorial_testing.html#

# Run without Docker Compose
Unless you have a good reason not to do so, the Docker Compose installation method is recommended over a manual install.

## Running
You will need to run a MySQL server (Or equivalent, such as MariaDB) and Apache2 with PHP. Unfortunately, because of the wide variety of possible scenarios there is no canonical guide for installation.

In general, your setup must:
- Include MySQL (Or equivalent), Apache 2, and PHP 5.6
- Have mod_rewrite installed and enabled
- Have the PHP extensions mysqli and gd installed and enabled
- Include a cache directory that is writable by the Apache process
- Include imagemagic and libpng-dev (Or equivalent)

## Adding Config
Simply add a `config.php` in this directory (It won't be committed, as it is in the `.gitignore`). See `config.php.docker` for an example.
