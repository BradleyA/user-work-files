#!/bin/bash
# 	template/TEST/template.sh/FVT-setup.sh  3.438.685  2019-08-22T23:38:37.505047-05:00 (CDT)  https://github.com/BradleyA/user-files.git  uadmin  one-rpi3b.cptx86.com 3.437  
# 	   copy to local directory and edit FVT-setup.sh SAST-setup.sh 
# 	hooks/EXAMPLES/FVT-setup.sh  3.424.665  2019-08-21T14:27:30.123978-05:00 (CDT)  https://github.com/BradleyA/user-files.git  uadmin  one-rpi3b.cptx86.com 3.423  
# 	   hooks/EXAMPLES/FVT-setup.sh  updated syntax of ln to match SAST ; need to begin testing FVT-* 
###
#	FVT-setup.sh -  This script is optional.  It runs before test cases are run, if FVT-setup.sh is found in TEST/<file_name>/
#	   Functional Verification Testing (FVT) - verify that the program logic conforms to design specification.
#	   FVT attempts to answer the question "Does this program logic do what is intended?"
#### production standard 3.0 shellcheck
#### production standard 5.1.160 Copyright
##       Copyright (c) 2019 Bradley Allen
##       MIT License is in the online DOCUMENTATION, DOCUMENTATION URL defined below.
### production standard 1.0 DEBUG variable
#       Order of precedence: environment variable, default code
if [ "${DEBUG}" == "" ] ; then DEBUG="0" ; fi   # 0 = debug off, 1 = debug on, 'export DEBUG=1', 'unset DEBUG' to unset environment variable (bash)
BOLD=$(tput -Txterm bold)
NORMAL=$(tput -Txterm sgr0)
#       Date and time function ISO 8601
get_date_stamp() {
DATE_STAMP=$(date +%Y-%m-%dT%H:%M:%S.%6N%:z)
TEMP=$(date +%Z)
DATE_STAMP="${DATE_STAMP} (${TEMP})"
}
#       Fully qualified domain name FQDN hostname
LOCALHOST=$(hostname -f)
#       Version
SCRIPT_VERSION=$(head -2 "${0}" | awk '{printf $3}')

### production standard 10.0 TESTing
#       Remove output from previous run of test cases
rm -f FVT-*.test-case-output

REPOSITORY_DIR=${1}

#       uncomment shared TEST cases for command
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-help-001" FVT-option-help-001
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-help-002" FVT-option-help-002
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-help-003" FVT-option-help-003
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-help-004" FVT-option-help-004
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-help-005" FVT-option-help-005
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-help-006" FVT-option-help-006
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-usage-001" FVT-option-usage-001
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-usage-002" FVT-option-usage-002
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-usage-003" FVT-option-usage-003
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-version-001" FVT-option-version-001
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-version-002" FVT-option-version-002
ln -fs "${REPOSITORY_DIR}/hooks/EXAMPLES/FVT-option-version-003" FVT-option-version-003
#
if [ "${DEBUG}" == "1" ] ; then get_date_stamp ; echo -e "${NORMAL}${DATE_STAMP} ${LOCALHOST} ${0}[$$] ${SCRIPT_VERSION} ${LINENO} ${USER} ${USER_ID}:${GROUP_ID} ${BOLD}[DEBUG]${NORMAL}  Operation finished." 1>&2 ; fi
###
