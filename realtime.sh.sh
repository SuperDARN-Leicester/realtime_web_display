#!/bin/bash

#   - git
#
# Requires:
#   - file ${HOME}/.scheduler with read permissions defining the following variables:
#       - LOCAL_SCHEDULE_DIR (example: /home/radman/borealis_schedules)
#       - SCHEDULING_ENV (example: /home/radman/scheduling-env)
#   - variable ${BOREALISPATH} defined in either ${HOME}/.profile or ${HOME}/.bashrc
#
# This script should be run via a systemd service in the following location:
# `/usr/lib/systemd/system/local_scd_server.service`

sh "${BOREALISPATH}/websockets_for_radar/backends/startbackends.sh"

# Source our environment
source "${HOME}/.scheduler"
source "${HOME}/.profile"
source "${HOME}/.bashrc"
source "${BOREALISPATH}/bin/activate"

# Run the script

sh "${BOREALISPATH}/websockets_for_radar/backends/startwebsockets.sh"