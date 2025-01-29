#!/bin/bash

# Check if the number of arguments is not equal to 2
# arg: git@hostname:username/repo.git
# if [ $# -ne 1 ]; then
#   echo "Usage: $0 <arg1>"
#   exit 1
# fi

# If 2 arguments are provided, print a success message
# echo "You provided 1 argument: $1 

ssh_url="git@hostname:username/repo.git"
echo -e "variable Name => " $ssh_url "...\n"

if [[ $ssh_url =~ git@([a-zA-Z.]+):(.+).git ]]; then
  host="${BASH_REMATCH[1]}"
  repo="${BASH_REMATCH[2]}"
  echo -e "hostname ==>" $host "\n"
  echo -e "repo ==>" $repo "\n"
fi