#!/usr/bin/python

import subprocess

def get_keychain_pass():
    command = "security find-generic-password -g -a z@zlu.me 2>&1 | awk '/^password: \"(.*)\"/{    print $2}'"
    output = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
    return output[1:(len(output)-2)]

