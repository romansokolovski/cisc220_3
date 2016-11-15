#!/bin/bash

lsblk --noheadings --raw | sort -h -k 4 | tail -n 2
