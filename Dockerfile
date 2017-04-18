FROM dmstr/phd5-app:5.0.0-beta36

# Additional packages, see also `docker-compose.dev.yml` for host-volumes
COPY ./composer.* /app/
RUN composer install -v --prefer-dist

COPY ./src /app/src