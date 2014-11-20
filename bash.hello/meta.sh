#! /bin/bash

# Declare bash string variable
BASH_VAR="Bash Script"

# echo variable BASH_VAR
echo $BASH_VAR

# when meat character such us "$" is escaped with "\" it will be read literally
echo \$BASH_VAR

# bachslash has also special meaning and it can be suppressed with yet anther "\"
echo "\\"
