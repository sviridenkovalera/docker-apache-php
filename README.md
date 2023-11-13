# Ubuntu(22.04) + Apache + PHP 8.2 + Ioncube x86-64

Webroot: /var/www/html

User/Group: www-data:www-data(33:33)

Port: 80

Modules:
   - bcmath
   - curl
   - dom
   - enchant
   - gd
   - gmp
   - iconv
   - imap
   - intl
   - mbstring
   - mcrypt
   - mysqli
   - mysqlnd
   - opcache
   - pdo
   - phar
   - pspell
   - snmp
   - soap
   - sockets
   - tidy
   - xmlreader
   - xmlrpc
   - xmlwriter
   - xsl
   - zip

## RUN


```sh
    $ docker run -it --rm -v "./src/:/var/www/html" -p "127.0.0.1:80:80" --platform linux/amd64 cowrvalera/docker-ubuntu-apache-php:v1.0.0
```


## Examples(docker-compose.yaml)

```yaml
version: '3.1'

services:
  web:
    image: cowrvalera/docker-ubuntu-apache-php:v1.0.0
    restart: unless-stopped
    platform: linux/amd64
    volumes:
      - ./src:/var/www/html
    ports:
      - "127.0.0.1:80:80"


```

### Start Example

```sh
	$ docker-compose up -d
```


### Stop Example

```sh
	$ docker-compose down
```

## License
MIT - see LICENSE