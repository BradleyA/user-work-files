#!/bin/bash
# 	hooks/EXAMPLES/TEST/GIT-VARIABLES-EXAMPLES.sh/SAST-setup.sh  3.325.556  2019-08-17T11:40:47.235451-05:00 (CDT)  https://github.com/BradleyA/user-files.git  uadmin  one-rpi3b.cptx86.com 3.324  
# 	   GIT-VARIABLES-EXAMPLES.sh   added SAST test cases 
###
#	SAST-setup.sh -  This script is optional.  It runs before test cases are run, if SAST-setup.sh is found in TEST/<file_name>/
#	   Static Analysis Software Testing (SAST) - examination of the code prior to the program’s execution
#	   SAST is code analysis, syntax, permission, code inspection, code review, data flow analysis, and
#	   walkthrough (manually reviewing algorithms as well as documents to find any errors).
#### production standard 3.0 shellcheck
#### production standard 5.1.160 Copyright
##       Copyright (c) 2019 Bradley Allen
##       MIT License is in the online DOCUMENTATION, DOCUMENTATION URL defined below.
###
#       Remove output from previous run of test cases
rm -f SAST-*.test-case-output
###		
