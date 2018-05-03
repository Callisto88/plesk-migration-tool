#!/usr/bin/env bash

##########
# CONFIG #
##########

# domain names
# FTP / SSH credentials

#########
# PLESK #
#########

# 1 Create subscription ( https://docs.plesk.com/en-US/onyx/cli-linux/using-command-line-utilities/subscription-subscriptions.37768/ )
#   1.1     subscription is "Website"
#           plesk bin subscription --create example.com -owner admin -service-plan "Default Domain" -ip 192.168.1.100 -login jdoe -passwd "userpass"
#
#   1.2     Update subscription ( https://docs.plesk.com/en-US/onyx/cli-linux/using-command-line-utilities/subscription_settings-hosting-subscription-settings.37982/ )

# 2 Create site withing subscription
#   2.1     https://docs.plesk.com/en-US/onyx/cli-linux/using-command-line-utilities/site-sites.67067/
#           plesk bin site --create example.com -webspace-name testdomain.tst -hosting true + OPTIONS
#
#   2.2
#
# 3 Create database
#   3.1     https://docs.plesk.com/en-US/onyx/cli-linux/using-command-line-utilities/database-databases.75671/
#           plesk bin database --create jdoe-gallery -domain example.com -server 192.0.2.78:3838 -print-id
#
#   3.2     Add a matching MySQL user

##############
# REMOTE VPS #
##############

# 4 SSH remote VPS