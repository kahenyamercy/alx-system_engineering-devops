#!/usr/bin/env bash
#server-02 login commands

#setting up the SSH-agent
eval $("ssh-agent")

#path to identityfile
ssh-add ~/.ssh/id_rsa
#username and ip address
ssh ubuntu@35.174.204.123
