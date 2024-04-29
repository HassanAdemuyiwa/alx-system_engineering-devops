#!/usr/bin/env bash
# uing puppet to make changes to configuration file

filt { 'ect/ssh/ssh_config':
	ensure => present,
content =>"
	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
