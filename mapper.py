#!/usr/bin/env python
"""Map стадия"""

import sys

def perform_map():
    """ Create key-value pair """
    for line in sys.stdin:
        line = line.strip()
        words = line.split()
        for word in words:
            print('%s\t%s' % (word, 1))


if __name__ == '__main__':
    perform_map()