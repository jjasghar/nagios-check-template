#!/bin/bash

stateid=

# Some command you want here, example outputs:
# expect 0, to be ok
# expect 1, to be a warning
# expect 2, to be critical
# expect anything else to be Unknown
COMMAND=

case $COMMAND in

  0)
    echo "OK"
    stateid=0
    ;;

  1)
    echo "Warning: $COMMAND"
    stateid=1
    ;;

  2)
    echo "CRITICAL: $COMMAND"
    stateid=2
    ;;

  *)
    echo "Unknown, something is not reading correctly"
    stateid=3
    ;;
esac

exit $stateid
