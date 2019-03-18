# PHP CLI Skeleton

For those that want to write PHP CLI based scripts but not install PHP and its dependencies on your local machine.  I have seeded the docker file with the MySQL PDO extension.

## Developing locally

```bash
docker build -t php-cli .

docker run -v /path/to/application/src/:/app -it php-cli-app /bin/sh
```

## Running

```bash
docker run php-cli-app
```