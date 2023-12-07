#!/usr/bin/env bash
#server-01 login commands

#setting up the SSH-agent
eval $("ssh-agent")

#path to identityfile
ssh-add ~/.ssh/id_rsa
#username and ip address
ssh ubuntu@54.162.236.70
