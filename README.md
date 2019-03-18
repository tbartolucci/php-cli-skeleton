# PHP CLI Skeleton

For those that want to write PHP CLI based scripts but not install PHP and its dependencies on your local machine.  I have seeded the docker file with the MySQL PDO extension.

## Build and Run

```bash
# Build
docker build -t php-cli .

# Run development
./docker-run.sh --dev php-cli 

# Run 
./docker-run.sh php-cli
```

If running in development mode you will be a shell prompt.  You'll need to run composer install yourself since we've mounted the source code to the container working directory.

```bash
php composer.phar install
```