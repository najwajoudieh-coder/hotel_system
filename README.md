Here are the steps needed to run the project locally :

using https
git clone https://github.com/najwajoudieh-coder/hotel_system_new.git
or using ssh 
git clone git@github.com:najwajoudieh-coder/hotel_system_new.git

cd hotel_system_new

#for laravel
cp .env.exmaple .env

#then configure database connection
vim .env databasename = hotel 
         databseroot = root
composer global require laravel/installer

#install nodejs from ubuntu
sudo apt update && sudo apt upgrade -y

#install jetstream
composer require laravel/jetstream
php artisan jetstream:install livewire
npm install
npm run build
php artisan migrate 
php artisan serve
