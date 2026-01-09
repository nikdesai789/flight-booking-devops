#!/bin/bash

# Wait until MySQL is ready
until mysql -h flight-booking-db -u root -proot -e "SELECT 1" &> /dev/null; do
  echo "Waiting for MySQL..."
  sleep 2
done

# Start Apache
apache2-foreground
