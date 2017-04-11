#!/bin/bash
echo ***
echo *** $(hostname)
echo *** consul configs
echo ***

# http://stackoverflow.com/questions/22393908/scp-a-folder-to-a-remote-system-keeping-the-directory-layout

# copy local config files to server
rysnc -r -e ssh ./consul.d/ /etc/
