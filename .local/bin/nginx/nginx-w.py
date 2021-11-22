#!/usr/bin/env python3

# Name:        nginx-w.py
# By:          cyancat
# Tag Added:   22/11/2021
# Desciption:  Nginx Wizard, was originally written in bash, now in Python. 

import os
import sys
import getpass
import pwd
from shutil import copyfile

def makeSymLink(siteDir,uid,homeDir,siteURL):
    print("Creating a shortcut to directory in %s..." %homeDir)
    os.symlink(siteDir,homeDir + siteURL)
    os.chown(homeDir + siteURL,uid,uid)

def createVarDir(siteDir,uid):
    if not os.path.exists(siteDir): 
        print("Creating directory at %s..." %siteDir)
        os.mkdir(siteDir)
        os.chown(siteDir,uid,uid)
        os.chmod(siteDir,755)
    else: 
        print("A directory of this name (%s) already exists. Please try again, or edit the current configuration." %siteDir)
        sys.exit()

def isUserRoot():
    if getpass.getuser() != "root":
        print("This command needs to be run with sudo.")
        sys.exit()

def isSSL():
    decideSSL = input("Would you like this setup to use the Nginx SSL configuration file? ")
    if decideSSL == "yes" or decideSSL == "y":
        return True

def createConfig(nginxTemplateFile,siteURL):
    print("Moing Nginx template file into position with new details...")
    nginxFile = "/etc/nginx/sites-available/" + siteURL
    with open(nginxTemplateFile, "rt") as nginxTemp:
        with open(nginxFile, "wt") as nginxNew:
            for line in nginxTemp:
                nginxNew.write(line.replace('your_domain',siteURL))
    print("Creating link from /sites-available/ to /sites-enabled...")
    os.symlink(nginxFile,"/etc/nginx/sites-enabled/" + siteURL)
    print("Don't forget to refresh nginx, with 'service nginx reload'!")
    sys.exit()



# Command needs to be run with sudo for some commands,
# but it also needs to know what the main user account will
# be called, so it can change some file permissions 
# accordingly, later on! 
isUserRoot()
username = input("Please enter your user account username: ")
uid = pwd.getpwnam(username).pw_uid
siteURL = input("Please enter the site URL: ")
siteURL = siteURL.replace("www.","") # we don't want a www. URL
siteDir = "/var/www/" + siteURL
homeDir = "/home/" + username + "/"

# Creating /var/www directories
createVarDir(siteDir,uid)

# Make SymLink
makeSymLink(siteDir,uid,homeDir,siteURL)

# Copy and configure Nginx files in /etc/nginx/sites-available, etc.
if isSSL() == True:
    nginxTemplateFile = homeDir + ".local/bin/nginx/template-ssl.nginx"
else: 
    nginxTemplateFile = homeDir + ".local/bin/nginx/template.nginx"

createConfig(nginxTemplateFile,siteURL)

