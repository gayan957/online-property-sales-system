FROM php:apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Enable the mysqli extension
RUN docker-php-ext-enable mysqli
