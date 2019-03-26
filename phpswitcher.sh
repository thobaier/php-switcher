#!/bin/bash

# Simple Ubuntu PHP-Switcher.
# Tested with default Terminal and ZSH.
#
# @author Thomas Baier <thomas.baier@gmail.com>

current_php_version=$(php -r 'echo PHP_VERSION_ID;')
php_versions_installed=$(sudo update-alternatives --list php)

clear
echo '================================================='
echo Current php version is: $(php -r 'echo PHP_VERSION;')
echo '================================================='
echo -e "\e[1;34mNow switch php version?\e[0m"

# get all available php versions
arr=()
for version in $php_versions_installed
do
    version_id=$("$version" -r 'echo PHP_VERSION_ID;')
    if [[ "$version_id" != "$current_php_version" ]]; then
        arr+=($version)
    fi
done

# iterate over versions
while true; do
   select version in "${arr[@]}" ; do
      if [ -n "${version}" ]; then
         break
      fi
      exit
   done;
   if [ -n "${version}" ]; then
      sudo update-alternatives --set php ${version} 2>&1 >/dev/null
      echo -e "\e[1;32mSwitched to version ${version}\e[0m"
      exit
   fi
done
