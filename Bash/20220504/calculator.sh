#! /usr/bin/bash
# Author: Mike Mendez
# Description: Calculator app: Usage calculator.sh operation arg1 arg2 ...
# Operations ADD SUBTRACT DIVIDE MULTIPLY

case "$1" in
     # addition
     "ADD") echo $(($2+$3)) ;;

     # subtraction
     "SUBTRACT") echo $(($2-$3)) ;;

     # division
     "DIVIDE") echo $(($2/$3)) ;;

     # multiplication
     "MULTIPLY") echo $(($2*$3)) ;;

     # modulo
     "MODULO") echo $(($2%$3)) ;;
esac
