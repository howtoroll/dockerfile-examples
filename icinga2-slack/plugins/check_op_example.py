#!/usr/bin/env python
import sys
import time
import optparse
import hashlib
import requests


# Nagios status codes
OK = 0
WARNING = 1
CRITICAL = 2
UNKNOWN = 3

def main():
    # Parse options
    parser = optparse.OptionParser()
    parser.add_option('-r', '--retry', help='retry count. Default: 2',
                      type='int', default=2)
    options, _ = parser.parse_args()
    print 'Parse options: %s' % (options,)

    # Testing
    try:
        pass
    except Exception as e:
        print 'Exception: %s' % (e,)
        sys.exit(UNKNOWN)

    sys.exit(OK)


if __name__ == '__main__':
    main()
